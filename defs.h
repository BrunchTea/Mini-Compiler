/**
 * @file defs.h
 * @author BrunchTea
 * @category Global variables and definitions
 * @brief Structure and enum definitions
 * 
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "incdir.h"

// Structure and enum definitions


enum {
  TEXTLEN = 512			// Length of identifiers in input
};

// Commands and default filenames
#define AOUT "a.out"
#define ASCMD "as -g -o "
#define QBECMD "qbe -o "
#define LDCMD "cc -g -no-pie -o "
#define CPPCMD "cpp -nostdinc -isystem "

// Token types
enum {
  T_EOF,

  // Binary operators
  T_ASSIGN, T_ASPLUS, T_ASMINUS,		// 1
  T_ASSTAR, T_ASSLASH, T_ASMOD,			// 4
  T_QUESTION, T_LOGOR, T_LOGAND,		// 7
  T_OR, T_XOR, T_AMPER,				// 10
  T_EQ, T_NE,					// 13
  T_LT, T_GT, T_LE, T_GE,			// 15
  T_LSHIFT, T_RSHIFT,				// 19
  T_PLUS, T_MINUS, T_STAR, T_SLASH, T_MOD,	// 21

  // Other operators
  T_INC, T_DEC, T_INVERT, T_LOGNOT,		// 26

  // Type keywords
  T_VOID, T_CHAR, T_INT, T_LONG,		// 30

  // Other keywords
  T_IF, T_ELSE, T_WHILE, T_FOR, T_RETURN,	// 34
  T_STRUCT, T_UNION, T_ENUM, T_TYPEDEF,		// 39
  T_EXTERN, T_BREAK, T_CONTINUE, T_SWITCH,	// 43
  T_CASE, T_DEFAULT, T_SIZEOF, T_STATIC,	// 47

  // Structural tokens
  T_INTLIT, T_STRLIT, T_SEMI, T_IDENT,		// 51
  T_LBRACE, T_RBRACE, T_LPAREN, T_RPAREN,	// 55
  T_LBRACKET, T_RBRACKET, T_COMMA, T_DOT,	// 59
  T_ARROW, T_COLON				// 63
};

// Token structure
struct token {
  int token;			// Token type, from the enum list above
  char *tokstr;			// String version of the token
  int intvalue;			// For T_INTLIT, the integer value
};

// AST node types. The first few line up
// with the related tokens
enum {
  A_ASSIGN = 1, A_ASPLUS, A_ASMINUS, A_ASSTAR,			//  1
  A_ASSLASH, A_ASMOD, A_TERNARY, A_LOGOR,			//  5
  A_LOGAND, A_OR, A_XOR, A_AND, A_EQ, A_NE, A_LT,		//  9
  A_GT, A_LE, A_GE, A_LSHIFT, A_RSHIFT,				// 16
  A_ADD, A_SUBTRACT, A_MULTIPLY, A_DIVIDE, A_MOD,		// 21
  A_INTLIT, A_STRLIT, A_IDENT, A_GLUE,				// 26
  A_IF, A_WHILE, A_FUNCTION, A_WIDEN, A_RETURN,			// 30
  A_FUNCCALL, A_DEREF, A_ADDR, A_SCALE,				// 35
  A_PREINC, A_PREDEC, A_POSTINC, A_POSTDEC,			// 39
  A_NEGATE, A_INVERT, A_LOGNOT, A_TOBOOL, A_BREAK,		// 43
  A_CONTINUE, A_SWITCH, A_CASE, A_DEFAULT, A_CAST		// 48
};

// Primitive types. The bottom 4 bits is an integer
// value that represents the level of indirection,
// e.g. 0= no pointer, 1= pointer, 2= pointer pointer etc.
enum {
  P_NONE, P_VOID = 16, P_CHAR = 32, P_INT = 48, P_LONG = 64,
  P_STRUCT=80, P_UNION=96
};

// Structural types
enum {
  S_VARIABLE, S_FUNCTION, S_ARRAY
};

// Storage classes
enum {
  C_GLOBAL = 1,			// Globally visible symbol
  C_LOCAL,			// Locally visible symbol
  C_PARAM,			// Locally visible function parameter
  C_EXTERN,			// External globally visible symbol
  C_STATIC,			// Static symbol, visible in one file
  C_STRUCT,			// A struct
  C_UNION,			// A union
  C_MEMBER,			// Member of a struct or union
  C_ENUMTYPE,			// A named enumeration type
  C_ENUMVAL,			// A named enumeration value
  C_TYPEDEF			// A named typedef
};

// Symbol table structure
struct symtable {
  char *name;			// Name of a symbol
  int type;			// Primitive type for the symbol
  struct symtable *ctype;	// If struct/union, ptr to that type
  int stype;			// Structural type for the symbol
  int class;			// Storage class for the symbol
  int size;			// Total size in bytes of this symbol
  int nelems;			// Functions: # params. Arrays: # elements
#define st_endlabel st_posn	// For functions, the end label
#define st_hasaddr  st_posn	// For locals, 1 if any A_ADDR operation
  int st_posn;			// For struct members, the offset of
    				// the member from the base of the struct
  int *initlist;		// List of initial values
  struct symtable *next;	// Next symbol in one list
  struct symtable *member;	// First member of a function, struct,
};				// union or enum

// Abstract Syntax Tree structure
struct ASTnode {
  int op;			// "Operation" to be performed on this tree
  int type;			// Type of any expression this tree generates
  struct symtable *ctype;	// If struct/union, ptr to that type
  int rvalue;			// True if the node is an rvalue
  struct ASTnode *left;		// Left, middle and right child trees
  struct ASTnode *mid;
  struct ASTnode *right;
  struct symtable *sym;		// For many AST nodes, the pointer to
  				// the symbol in the symbol table
#define a_intvalue a_size	// For A_INTLIT, the integer value
  int a_size;			// For A_SCALE, the size to scale by
  int linenum;			// Line number from where this node comes
};

enum {
  NOREG = -1,			// Use NOREG when the AST generation
  				// functions have no temporary to return
  NOLABEL = 0			// Use NOLABEL when we have no label to
    				// pass to genAST()
};
