/**
 * @file decl.h
 * @author BrunchTea
 * @category Global variables and definitions
 * @brief Function prototypes for all compiler files
 */

// scan.c
/**
 * @fn reject_token
 * @brief Reject a token
 * @param t Token to reject
 * @return void
 * @note This function is used to reject a token
 */
void reject_token(struct token *t);
/**
 * @fn scan
 * @brief Scan a token
 * @param t Token to scan
 * @return int
 * @note This function is used to scan a token
 */
int scan(struct token *t);

// tree.c
/**
 * @fn mkastnode
 * @brief Make an AST node
 * @param op Operator
 * @param type Type
 * @param ctype C type
 * @param left Left node
 * @param mid Middle node
 * @param right Right node
 * @param sym Symbol table
 * @param intvalue Integer value
 * @return struct ASTnode
 * @note This function is used to make an AST node
 */
struct ASTnode *mkastnode(int op, int type,
						  struct symtable *ctype,
						  struct ASTnode *left,
						  struct ASTnode *mid,
						  struct ASTnode *right,
						  struct symtable *sym, int intvalue);

/**
 * @fn mkastleaf
 * @brief Make an AST leaf node
 * @param op Operator
 * @param type Type
 * @param ctype C type
 * @param sym Symbol table
 * @param intvalue Integer value
 * @return struct ASTnode
 * @note This function is used to make an AST leaf node
 */
struct ASTnode *mkastleaf(int op, int type,
						  struct symtable *ctype,
						  struct symtable *sym, int intvalue);

/**
 * @fn mkastunary
 * @brief Make an AST unary node
 * @param op Operator
 * @param type Type
 * @param ctype C type
 * @param left Left node
 * @param sym Symbol table
 * @param intvalue Integer value
 * @return struct ASTnode
 * @note This function is used to make an AST unary node
 */
struct ASTnode *mkastunary(int op, int type,
						   struct symtable *ctype,
						   struct ASTnode *left,
						   struct symtable *sym, int intvalue);

/**
 * @fn dumpAST
 * @brief Dump an AST node
 * @param n AST node
 * @param label Label
 * @param level Level
 * @return void
 * @note This function is used to dump an AST node
 */
void dumpAST(struct ASTnode *n, int label, int level);

// gen.c
/**
 * @fn genlabel
 * @brief Generate a label
 * @return int
 * @note This function is used to generate a label
 */
int genlabel(void);
/**
 * @fn genAST
 * @brief Generate an AST node
 * @param n AST node
 * @param iflabel If label
 * @param looptoplabel Loop top label
 * @param loopendlabel Loop end label
 * @param parentASTop Parent AST operator
 * @return int
 * @note This function is used to generate an AST node
 */
int genAST(struct ASTnode *n, int iflabel, int looptoplabel,
		   int loopendlabel, int parentASTop);

/**
 * @fn genpreamble
 * @brief Generate a preamble
 * @param filename Filename
 * @return void
 * @note This function generates the preamble of the assembly code file with the given filename.
 */
void genpreamble(char *filename);

/**
 * @fn genpostamble
 * @brief Generate a postamble
 * @return void
 * @note This function generates the postamble of the assembly code file.
 */
void genpostamble();

/**
 * @fn genfreeregs
 * @brief Generate free registers
 * @param keepreg Keep register
 * @return void
 * @note This function generates code to free all registers except the one specified by the keepreg parameter.
 */
void genfreeregs(int keepreg);

/**
 * @fn genglobsym
 * @brief Generate a global symbol
 * @param node Symbol table
 * @return void
 * @note This function generates a global symbol for the given symbol table node.
 */
void genglobsym(struct symtable *node);

/**
 * @fn genglobstr
 * @brief Generate a global string
 * @param strvalue String value
 * @param append Append
 * @return int
 * @note This function generates a global string with the given value and appends it to the current global string table.
 */
int genglobstr(char *strvalue, int append);

/**
 * @fn genglobstrend
 * @brief Generate a global string
 * @return void
 * @note This function marks the end of the global string table.
 */
void genglobstrend(void);

/**
 * @fn genprimsize
 * @brief Generate a primitive size
 * @param type Type
 * @return int
 * @note This function returns the size of the primitive type specified by the type parameter.
 */
int genprimsize(int type);

/**
 * @fn genalign
 * @brief Generate an alignment
 * @param type Type
 * @param offset Offset
 * @param direction Direction
 * @return int
 * @note This function generates code to align the stack pointer to a multiple of the size of the specified type.
 */
int genalign(int type, int offset, int direction);

/**
 * @fn genprintint
 * @brief Generate a print integer
 * @param reg Register
 * @param id ID
 * @return void
 * @note This function generates code to return the value in the specified register and with the specified ID.
 */

void genreturn(int reg, int id);

// cg.c
int cgprimsize(int type);
int cgalign(int type, int offset, int direction);
void cgtextseg();
void cgdataseg();
int cgalloctemp(void);
void cgfreeallregs(int keepreg);
void cgfreereg(int reg);
void cgspillregs(void);
void cgpreamble(char *filename);
void cgpostamble();
void cgfuncpreamble(struct symtable *sym);
void cgfuncpostamble(struct symtable *sym);
int cgloadint(int value, int type);
int cgloadvar(struct symtable *sym, int op);
int cgloadglobstr(int label);
int cgadd(int r1, int r2, int type);
int cgsub(int r1, int r2, int type);
int cgmul(int r1, int r2, int type);
int cgdivmod(int r1, int r2, int op, int type);
int cgshlconst(int r, int val, int type);
int cgcall(struct symtable *sym, int numargs, int *arglist, int *typelist);
void cgcopyarg(int r, int argposn);
int cgstorglob(int r, struct symtable *sym);
int cgstorlocal(int r, struct symtable *sym);
void cgglobsym(struct symtable *node);
void cgglobstr(int l, char *strvalue, int append);
void cgglobstrend(void);
int cgcompare_and_set(int ASTop, int r1, int r2, int type);
int cgcompare_and_jump(int ASTop, int r1, int r2, int label, int type);
void cglabel(int l);
void cgjump(int l);
int cgwiden(int r, int oldtype, int newtype);
void cgreturn(int reg, struct symtable *sym);
int cgaddress(struct symtable *sym);
int cgderef(int r, int type);
int cgstorderef(int r1, int r2, int type);
int cgnegate(int r, int type);
int cginvert(int r, int type);
int cglognot(int r, int type);
void cgloadboolean(int r, int val, int type);
int cgboolean(int r, int op, int label, int type);
int cgand(int r1, int r2, int type);
int cgor(int r1, int r2, int type);
int cgxor(int r1, int r2, int type);
int cgshl(int r1, int r2, int type);
int cgshr(int r1, int r2, int type);
void cgswitch(int reg, int casecount, int toplabel,
			  int *caselabel, int *caseval, int defaultlabel);
void cgmove(int r1, int r2, int type);
void cglinenum(int line);
int cgcast(int t, int oldtype, int newtype);

// expr.c
struct ASTnode *expression_list(int endtoken);
struct ASTnode *binexpr(int ptp);

// stmt.c
struct ASTnode *compound_statement(int inswitch);

// misc.c
void match(int t, char *what);
void semi(void);
void lbrace(void);
void rbrace(void);
void lparen(void);
void rparen(void);
void ident(void);
void comma(void);
void fatal(char *s);
void fatals(char *s1, char *s2);
void fatald(char *s, int d);
void fatalc(char *s, int c);

// sym.c
void appendsym(struct symtable **head, struct symtable **tail,
			   struct symtable *node);
struct symtable *newsym(char *name, int type, struct symtable *ctype,
						int stype, int class, int nelems, int posn);
struct symtable *addglob(char *name, int type, struct symtable *ctype,
						 int stype, int class, int nelems, int posn);
struct symtable *addlocl(char *name, int type, struct symtable *ctype,
						 int stype, int nelems);
struct symtable *addparm(char *name, int type, struct symtable *ctype,
						 int stype);
struct symtable *addstruct(char *name);
struct symtable *addunion(char *name);
struct symtable *addmemb(char *name, int type, struct symtable *ctype,
						 int stype, int nelems);
struct symtable *addenum(char *name, int class, int value);
struct symtable *addtypedef(char *name, int type, struct symtable *ctype);
struct symtable *findglob(char *s);
struct symtable *findlocl(char *s);
struct symtable *findsymbol(char *s);
struct symtable *findmember(char *s);
struct symtable *findstruct(char *s);
struct symtable *findunion(char *s);
struct symtable *findenumtype(char *s);
struct symtable *findenumval(char *s);
struct symtable *findtypedef(char *s);
void clear_symtable(void);
void freeloclsyms(void);
void freestaticsyms(void);
void dumptable(struct symtable *head, char *name, int indent);
void dumpsymtables(void);

// decl.c
int parse_type(struct symtable **ctype, int *class);
int parse_stars(int type);
int parse_cast(struct symtable **ctype);
int declaration_list(struct symtable **ctype, int class, int et1, int et2,
					 struct ASTnode **gluetree);
void global_declarations(void);

// types.c
int inttype(int type);
int ptrtype(int type);
int pointer_to(int type);
int value_at(int type);
int typesize(int type, struct symtable *ctype);
struct ASTnode *modify_type(struct ASTnode *tree, int rtype,
							struct symtable *rctype, int op);

// opt.c
struct ASTnode *optimise(struct ASTnode *n);
