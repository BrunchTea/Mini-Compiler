/**
 * @file sym.c
 * @author BrunchTea
 * @brief Symbol table functions
 */
#include "defs.h"
#include "data.h"
#include "decl.h"

// Symbol table functions

// Append a node to the singly-linked list pointed to by head or tail
/**
 * @fn appendsym
 * @brief Append a node to the singly-linked list pointed to by head or tail
 * @param head The head of the list
 * @param tail The tail of the list
 * @param node The node to be appended
 * @return void
 * @note head, tail or node is NULL in appendsym
 */
void appendsym(struct symtable **head, struct symtable **tail,
               struct symtable *node)
{

  // Check for valid pointers
  if (head == NULL || tail == NULL || node == NULL)
    fatal("Either head, tail or node is NULL in appendsym");

  // Append to the list
  if (*tail)
  {
    (*tail)->next = node;
    *tail = node;
  }
  else
    *head = *tail = node;
  node->next = NULL;
}

// Create a symbol node to be added to a symbol table list.
// Set up the node's:
// + type: char, int etc.
// + ctype: composite type pointer for struct/union
// + structural type: var, function, array etc.
// + size: number of elements, or endlabel: end label for a function
// + posn: Position information for local symbols
// Return a pointer to the new node
/**
 * @fn newsym
 * @brief Create a symbol node to be added to a symbol table list.
 * @param name The name of the symbol
 * @param type The type of the symbol
 * @param ctype The composite type pointer for struct/union
 * @param stype The structural type of the symbol
 * @param class The class of the symbol
 * @param nelems The number of elements
 * @param posn The position information for local symbols
 * @return The pointer to the new node
 */
struct symtable *newsym(char *name, int type, struct symtable *ctype,
                        int stype, int class, int nelems, int posn)
{

  // Get a new node
  struct symtable *node = (struct symtable *)malloc(sizeof(struct symtable));
  if (node == NULL)
    fatal("Unable to malloc a symbol table node in newsym");

  // Fill in the values
  if (name == NULL)
    node->name = NULL;
  else
    node->name = strdup(name);
  node->type = type;
  node->ctype = ctype;
  node->stype = stype;
  node->class = class;
  node->nelems = nelems;

  // For pointers and integer types, set the size
  // of the symbol. structs and union declarations
  // manually set this up themselves.
  if (ptrtype(type) || inttype(type))
    node->size = nelems * typesize(type, ctype);

  node->st_posn = posn;
  node->next = NULL;
  node->member = NULL;
  node->initlist = NULL;
  return (node);
}

// Add a symbol to the global symbol list
/**
 * @fn addglob
 * @brief Add a symbol to the global symbol list
 * @param name The name of the symbol
 * @param type The type of the symbol
 * @param ctype The composite type pointer for struct/union
 * @param stype The structural type of the symbol
 * @param class The class of the symbol
 * @param nelems The number of elements
 * @param posn The position information for local symbols
 * @return The pointer to the new node
 */
struct symtable *addglob(char *name, int type, struct symtable *ctype,
                         int stype, int class, int nelems, int posn)
{
  struct symtable *sym =
      newsym(name, type, ctype, stype, class, nelems, posn);
  // For structs and unions, copy the size from the type node
  if (type == P_STRUCT || type == P_UNION)
    sym->size = ctype->size;
  appendsym(&Globhead, &Globtail, sym);
  return (sym);
}

// Add a symbol to the local symbol list
/**
 * @fn addlocl
 * @brief Add a symbol to the local symbol list
 * @param name The name of the symbol
 * @param type The type of the symbol
 * @param ctype The composite type pointer for struct/union
 * @param stype The structural type of the symbol
 * @param nelems The number of elements
 * @return The pointer to the new node
 */
struct symtable *addlocl(char *name, int type, struct symtable *ctype,
                         int stype, int nelems)
{
  struct symtable *sym = newsym(name, type, ctype, stype, C_LOCAL, nelems, 0);

  // For structs and unions, copy the size from the type node
  if (type == P_STRUCT || type == P_UNION)
    sym->size = ctype->size;
  appendsym(&Loclhead, &Locltail, sym);
  return (sym);
}

// Add a symbol to the parameter list
/**
 * @fn addparm
 * @brief Add a symbol to the parameter list
 * @param name The name of the symbol
 * @param type The type of the symbol
 * @param ctype The composite type pointer for struct/union
 * @param stype The structural type of the symbol
 * @return The pointer to the new node
 */
struct symtable *addparm(char *name, int type, struct symtable *ctype,
                         int stype)
{
  struct symtable *sym = newsym(name, type, ctype, stype, C_PARAM, 1, 0);
  appendsym(&Parmhead, &Parmtail, sym);
  return (sym);
}

// Add a symbol to the temporary member list
/**
 * @fn addmemb
 * @brief Add a symbol to the temporary member list
 * @param name The name of the symbol
 * @param type The type of the symbol
 * @param ctype The composite type pointer for struct/union
 * @param stype The structural type of the symbol
 * @param nelems The number of elements
 * @return The pointer to the new node
 */
struct symtable *addmemb(char *name, int type, struct symtable *ctype,
                         int stype, int nelems)
{
  struct symtable *sym =
      newsym(name, type, ctype, stype, C_MEMBER, nelems, 0);

  // For structs and unions, copy the size from the type node
  if (type == P_STRUCT || type == P_UNION)
    sym->size = ctype->size;
  appendsym(&Membhead, &Membtail, sym);
  return (sym);
}

// Add a struct to the struct list
/**
 * @fn addstruct
 * @brief Add a struct to the struct list
 * @param name The name of the symbol
 * @return The pointer to the new node
 */
struct symtable *addstruct(char *name)
{
  struct symtable *sym = newsym(name, P_STRUCT, NULL, 0, C_STRUCT, 0, 0);
  appendsym(&Structhead, &Structtail, sym);
  return (sym);
}

// Add a struct to the union list
/**
 * @fn addunion
 * @brief Add a struct to the union list
 * @param name The name of the symbol
 * @return The pointer to the new node
 */
struct symtable *addunion(char *name)
{
  struct symtable *sym = newsym(name, P_UNION, NULL, 0, C_UNION, 0, 0);
  appendsym(&Unionhead, &Uniontail, sym);
  return (sym);
}

// Add an enum type or value to the enum list.
// Class is C_ENUMTYPE or C_ENUMVAL.
// Use posn to store the int value.
/**
 * @fn addenum
 * @brief Add an enum type or value to the enum list
 * @param name The name of the symbol
 * @param class The class of the symbol
 * @param value The value of the symbol
 * @return The pointer to the new node
 */
struct symtable *addenum(char *name, int class, int value)
{
  struct symtable *sym = newsym(name, P_INT, NULL, 0, class, 0, value);
  appendsym(&Enumhead, &Enumtail, sym);
  return (sym);
}

// Add a typedef to the typedef list
/**
 * @fn addtypedef
 * @brief Add a typedef to the typedef list
 * @param name The name of the symbol
 * @param type The type of the symbol
 * @param ctype The composite type pointer for struct/union
 * @return The pointer to the new node
 */
struct symtable *addtypedef(char *name, int type, struct symtable *ctype)
{
  struct symtable *sym = newsym(name, type, ctype, 0, C_TYPEDEF, 0, 0);
  appendsym(&Typehead, &Typetail, sym);
  return (sym);
}

// Search for a symbol in a specific list.
// Return a pointer to the found node or NULL if not found.
// If class is not zero, also match on the given class
/**
 * @fn findsyminlist
 * @brief Search for a symbol in a specific list
 * @param s The name of the symbol
 * @param list The list to search
 * @param class The class of the symbol
 * @return The pointer to the found node or NULL if not found
 * @note If class is not zero, also match on the given class
 */
static struct symtable *findsyminlist(char *s, struct symtable *list,
                                      int class)
{
  for (; list != NULL; list = list->next)
    if ((list->name != NULL) && !strcmp(s, list->name))
      if (class == 0 || class == list->class)
        return (list);
  return (NULL);
}

// Determine if the symbol s is in the global symbol table.
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findglob
 * @brief Determine if the symbol s is in the global symbol table
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findglob(char *s)
{
  return (findsyminlist(s, Globhead, 0));
}

// Determine if the symbol s is in the local symbol table.
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findlocl
 * @brief Determine if the symbol s is in the local symbol table
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findlocl(char *s)
{
  struct symtable *node;

  // Look for a parameter if we are in a function's body
  if (Functionid)
  {
    node = findsyminlist(s, Functionid->member, 0);
    if (node)
      return (node);
  }
  return (findsyminlist(s, Loclhead, 0));
}

// Determine if the symbol s is in the symbol table.
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findsymbol
 * @brief Determine if the symbol s is in the symbol table
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findsymbol(char *s)
{
  struct symtable *node;

  // Look for a parameter if we are in a function's body
  if (Functionid)
  {
    node = findsyminlist(s, Functionid->member, 0);
    if (node)
      return (node);
  }
  // Otherwise, try the local and global symbol lists
  node = findsyminlist(s, Loclhead, 0);
  if (node)
    return (node);
  return (findsyminlist(s, Globhead, 0));
}

// Find a member in the member list
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findmember
 * @brief Find a member in the member list
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findmember(char *s)
{
  return (findsyminlist(s, Membhead, 0));
}

// Find a struct in the struct list
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findstruct
 * @brief Find a struct in the struct list
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findstruct(char *s)
{
  return (findsyminlist(s, Structhead, 0));
}

// Find a struct in the union list
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findunion
 * @brief Find a struct in the union list
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findunion(char *s)
{
  return (findsyminlist(s, Unionhead, 0));
}

// Find an enum type in the enum list
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findenumtype
 * @brief Find an enum type in the enum list
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findenumtype(char *s)
{
  return (findsyminlist(s, Enumhead, C_ENUMTYPE));
}

// Find an enum value in the enum list
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findenumval
 * @brief Find an enum value in the enum list
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findenumval(char *s)
{
  return (findsyminlist(s, Enumhead, C_ENUMVAL));
}

// Find a type in the tyedef list
// Return a pointer to the found node or NULL if not found.
/**
 * @fn findtypedef
 * @brief Find a type in the tyedef list
 * @param s The name of the symbol
 * @return The pointer to the found node or NULL if not found
 */
struct symtable *findtypedef(char *s)
{
  return (findsyminlist(s, Typehead, 0));
}

// Reset the contents of the symbol table
/**
 * @fn clear_symtable
 * @brief Reset the contents of the symbol table
 */
void clear_symtable(void)
{
  Globhead = Globtail = NULL;
  Loclhead = Locltail = NULL;
  Parmhead = Parmtail = NULL;
  Membhead = Membtail = NULL;
  Structhead = Structtail = NULL;
  Unionhead = Uniontail = NULL;
  Enumhead = Enumtail = NULL;
  Typehead = Typetail = NULL;
}

// Clear all the entries in the local symbol table
/**
 * @fn freeloclsyms
 * @brief Clear all the entries in the local symbol table
 */
void freeloclsyms(void)
{
  Loclhead = Locltail = NULL;
  Parmhead = Parmtail = NULL;
  Functionid = NULL;
}

// Remove all static symbols from the global symbol table
/**
 * @fn freestaticsyms
 * @brief Remove all static symbols from the global symbol table
 */
void freestaticsyms(void)
{
  // g points at current node, prev at the previous one
  struct symtable *g, *prev = NULL;

  // Walk the global table looking for static entries
  for (g = Globhead; g != NULL; g = g->next)
  {
    if (g->class == C_STATIC)
    {

      // If there's a previous node, rearrange the prev pointer
      // to skip over the current node. If not, g is the head,
      // so do the same to Globhead
      if (prev != NULL)
        prev->next = g->next;
      else
        Globhead->next = g->next;

      // If g is the tail, point Globtail at the previous node
      // (if there is one), or Globhead
      if (g == Globtail)
      {
        if (prev != NULL)
          Globtail = prev;
        else
          Globtail = Globhead;
      }
    }
  }

  // Point prev at g before we move up to the next node
  prev = g;
}

// Dump a single symbol
/**
 * @fn dumpsym
 * @brief Dump a single symbol
 * @param sym The symbol to dump
 * @param indent The indentation level
 */
static void dumpsym(struct symtable *sym, int indent)
{
  int i;

  for (i = 0; i < indent; i++)
    printf(" ");
  switch (sym->type & (~0xf))
  {
  case P_VOID:
    printf("void ");
    break;
  case P_CHAR:
    printf("char ");
    break;
  case P_INT:
    printf("int ");
    break;
  case P_LONG:
    printf("long ");
    break;
  case P_STRUCT:
    if (sym->ctype != NULL)
      printf("struct %s ", sym->ctype->name);
    else
      printf("struct %s ", sym->name);
    break;
  case P_UNION:
    if (sym->ctype != NULL)
      printf("union %s ", sym->ctype->name);
    else
      printf("union %s ", sym->name);
    break;
  default:
    printf("unknown type ");
  }

  for (i = 0; i < (sym->type & 0xf); i++)
    printf("*");
  printf("%s", sym->name);

  switch (sym->stype)
  {
  case S_VARIABLE:
    break;
  case S_FUNCTION:
    printf("()");
    break;
  case S_ARRAY:
    printf("[]");
    break;
  default:
    printf(" unknown stype");
  }

  switch (sym->class)
  {
  case C_GLOBAL:
    printf(": global");
    break;
  case C_LOCAL:
    printf(": local");
    break;
  case C_PARAM:
    printf(": param");
    break;
  case C_EXTERN:
    printf(": extern");
    break;
  case C_STATIC:
    printf(": static");
    break;
  case C_STRUCT:
    printf(": struct");
    break;
  case C_UNION:
    printf(": union");
    break;
  case C_MEMBER:
    printf(": member");
    break;
  case C_ENUMTYPE:
    printf(": enumtype");
    break;
  case C_ENUMVAL:
    printf(": enumval");
    break;
  case C_TYPEDEF:
    printf(": typedef");
    break;
  default:
    printf(": unknown class");
  }

  switch (sym->stype)
  {
  case S_VARIABLE:
    if (sym->class == C_ENUMVAL)
      printf(", value %d\n", sym->st_posn);
    else
      printf(", size %d\n", sym->size);
    break;
  case S_FUNCTION:
    printf(", %d params\n", sym->nelems);
    break;
  case S_ARRAY:
    printf(", %d elems, size %d\n", sym->nelems, sym->size);
    break;
  }

  switch (sym->type & (~0xf))
  {
  case P_STRUCT:
  case P_UNION:
    dumptable(sym->member, NULL, 4);
  }

  switch (sym->stype)
  {
  case S_FUNCTION:
    dumptable(sym->member, NULL, 4);
  }
}

// Dump one symbol table
/**
 * @fn dumptable
 * @brief Dump one symbol table
 * @param head The head of the symbol table
 * @param name The name of the symbol table
 * @param indent The indentation level
 */
void dumptable(struct symtable *head, char *name, int indent)
{
  struct symtable *sym;

  if (head != NULL && name != NULL)
    printf("%s\n--------\n", name);
  for (sym = head; sym != NULL; sym = sym->next)
    dumpsym(sym, indent);
}

// Dump all the symbol tables
/**
 * @fn dumpsymtables
 * @brief Dump all the symbol tables
 */
void dumpsymtables(void)
{
  dumptable(Globhead, "Global", 0);
  printf("\n");
  dumptable(Enumhead, "Enums", 0);
  printf("\n");
  dumptable(Typehead, "Typedefs", 0);
}
