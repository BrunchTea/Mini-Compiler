/**
 * @file misc.c
 * @author BrunchTea
 * @brief Miscellaneous functions
 * @attention This file is part of the DSA project by BrunchTea.
*/
#include "defs.h"
#include "data.h"
#include "decl.h"
#include <stdio.h>
#include <unistd.h>

// Miscellaneous functions


// Ensure that the current token is t,
// and fetch the next token. Otherwise
// throw an error 
/**
 * @fn match
 * @brief Ensure that the current token is t, and fetch the next token. Otherwise throw an error
 * @param t The token to be checked
 * @param what The token to be checked
 * @return void
*/
void match(int t, char *what) {
  if (Token.token == t) {
    scan(&Token);
  } else {
    fatals("Expected", what);
  }
}

// Match a semicolon and fetch the next token
/**
 * @fn semi
 * @brief Match a semicolon and fetch the next token
*/
void semi(void) {
  match(T_SEMI, ";");
}

// Match a left brace and fetch the next token
/**
 * @fn lbrace
 * @brief Match a left brace and fetch the next token
*/
void lbrace(void) {
  match(T_LBRACE, "{");
}

// Match a right brace and fetch the next token
/**
 * @fn rbrace
 * @brief Match a right brace and fetch the next token
*/
void rbrace(void) {
  match(T_RBRACE, "}");
}

// Match a left parenthesis and fetch the next token
/**
 * @fn lparen
 * @brief Match a left parenthesis and fetch the next token
*/
void lparen(void) {
  match(T_LPAREN, "(");
}

// Match a right parenthesis and fetch the next token
/**
 * @fn rparen
 * @brief Match a right parenthesis and fetch the next token
*/
void rparen(void) {
  match(T_RPAREN, ")");
}

// Match an identifer and fetch the next token
/**
 * @fn ident
 * @brief Match an identifer and fetch the next token
*/
void ident(void) {
  match(T_IDENT, "identifier");
}

// Match a comma and fetch the next token
/**
 * @fn comma
 * @brief Match a comma and fetch the next token
*/
void comma(void) {
  match(T_COMMA, "comma");
}

// Print out fatal messages
/**
 * @fn fatal
 * @brief Print out fatal messages
 * @param s The message to be printed
 * @return void
*/
void fatal(char *s) {
  fprintf(stderr, "%s on line %d of %s\n", s, Line, Infilename);
  fclose(Outfile);
  unlink(Outfilename);
  exit(1);
}

/**
 * @fn fatals
 * @brief Print out fatal messages
 * @param s1 The message to be printed
 * @param s2 The message to be printed
*/
void fatals(char *s1, char *s2) {
  fprintf(stderr, "%s:%s on line %d of %s\n", s1, s2, Line, Infilename);
  fclose(Outfile);
  unlink(Outfilename);
  exit(1);
}

/**
 * @fn fatald
 * @brief Print out fatal messages
 * @param s The message to be printed
 * @param d The message to be printed
*/
void fatald(char *s, int d) {
  fprintf(stderr, "%s:%d on line %d of %s\n", s, d, Line, Infilename);
  fclose(Outfile);
  unlink(Outfilename);
  exit(1);
}

/**
 * @fn fatalc
 * @brief Print out fatal messages
 * @param s The message to be printed
 * @param c The message to be printed
*/
void fatalc(char *s, int c) {
  fprintf(stderr, "%s:%c on line %d of %s\n", s, c, Line, Infilename);
  fclose(Outfile);
  unlink(Outfilename);
  exit(1);
}
