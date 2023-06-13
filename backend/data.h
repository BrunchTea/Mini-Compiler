/**
 * @file data.h
 * @author BrunchTea
 * @category Global variables and definitions
 * @brief Global variables and definitions
 * @attention This file is part of the DSA project by BrunchTea.
 */

#ifndef extern_
#define extern_ extern
#endif

/**
 * @brief Global variables
 * @var int Line
 * Current line number
 * @var int Linestart
 * True if at start of a line
 * @var int Putback
 * Character put back by scanner
 * @var struct symtable *Functionid
 * Symbol ptr of the current function
 * @var FILE *Infile
 * Input files
 * @var FILE *Outfile
 * Output files
 * @var char *Infilename
 * Name of file we are parsing
 * @var char *Outfilename
 * Name of file we opened as Outfile
 * @var struct token
 * Token Last token scanned
 * @var struct token
 * Peektoken A look-ahead token
 * @var char Text[TEXTLEN + 1]
 * Last identifier scanned
 * @var int Looplevel
 * Depth of nested loops
 * @var int Switchlevel
 * Depth of nested switches
 * @var char *Tstring[]
 * List of token strings
 *
 */
extern_ int Line;
extern_ int Linestart;
extern_ int Putback;
extern_ struct symtable *Functionid;
extern_ FILE *Infile;
extern_ FILE *Outfile;
extern_ char *Infilename;
extern_ char *Outfilename;
extern_ struct token Token;
extern_ struct token Peektoken;
extern_ char Text[TEXTLEN + 1];
extern_ int Looplevel;
extern_ int Switchlevel;
extern char *Tstring[];

/**
 * @brief Symbol table lists
 * @var struct symtable *Globhead, *Globtail
 * Global variables and functions
 * @var struct symtable *Loclhead, *Locltail
 * Local variables
 * @var struct symtable *Parmhead, *Parmtail
 * Local parameters
 * @var struct symtable *Membhead, *Membtail
 * Temp list of struct/union members
 * @var struct symtable *Structhead, *Structtail
 * List of struct types
 * @var struct symtable *Unionhead, *Uniontail
 * List of union types
 * @var struct symtable *Enumhead, *Enumtail
 * List of enum types and values
 * @var struct symtable *Typehead, *Typetail
 * List of typedefs
 */
extern_ struct symtable *Globhead, *Globtail;
extern_ struct symtable *Loclhead, *Locltail;
extern_ struct symtable *Parmhead, *Parmtail;
extern_ struct symtable *Membhead, *Membtail;
extern_ struct symtable *Structhead, *Structtail;
extern_ struct symtable *Unionhead, *Uniontail;
extern_ struct symtable *Enumhead, *Enumtail;
extern_ struct symtable *Typehead, *Typetail;

// Command-line flags
/**
 * @brief Command-line flags
 * @var int O_dumpsource
 * If true, dump the source after preprocessing
 * @var int O_dumpsymbols
 * If true, dump the symbol table
 * @var int O_keepasm
 * If true, keep any assembly files
 * @var int O_assemble
 * If true, assemble the assembly files
 * @var int O_dolink
 * If true, link the object files
 * @var int O_verbose
 * If true, print info on compilation stages
 */
extern_ int O_dumpAST;
extern_ int O_dumpsym;
extern_ int O_keepasm;
extern_ int O_assemble;
extern_ int O_dolink;
extern_ int O_verbose;
