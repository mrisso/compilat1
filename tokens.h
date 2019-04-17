/* TOKENS_H */

#ifndef TOKENS_H
#define TOKENS_H

/* Tipo Enumerado com os Tokens */
typedef enum 
{
	ELSE,
	IF,
	INPUT,
	INT,
	OUTPUT,
	RETURN,
	VOID,
	WHILE,
	WRITE,
	PLUS,
	MINUS,
	TIMES,
	OVER,
	LT,
	LE,
	GT,
	GE,
	EQ,
	NEQ,
	ASSIGN,
	SEMI,
	COMMA,
	LPAREN,
	RPAREN,
	LBRACK,
	RBRACK,
	LBRACE,
	RBRACE,
	NUM,
	ID,
	STRING 
} tokenType;

/* Strings Correspondentes aos Tokens */
static const char *TOKEN_TYPE_STRING[] = 
{
	"ELSE",
	"IF",
	"INPUT",
	"INT",
	"OUTPUT",
	"RETURN",
	"VOID",
	"WHILE",
	"WRITE",
	"PLUS",
	"MINUS",
	"TIMES",
	"OVER",
	"LT",
	"LE",
	"GT",
	"GE",
	"EQ",
	"NEQ",
	"ASSIGN",
	"SEMI",
	"COMMA",
	"LPAREN",
	"RPAREN",
	"LBRACK",
	"RBRACK",
	"LBRACE",
	"RBRACE",
	"NUM",
	"ID",
	"STRING"
};

#endif
