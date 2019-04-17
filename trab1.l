
	/* Opções do Flex */

	/* Nome do Arquivo de Saída: */
%option outfile="trab1"
	/* Não Usar Algumas Funções Desnecessárias */
%option noyywrap
%option nounput
%option noinput
/* Incrementar Automaticamente o Contador de quebra de linhas */
%option yylineno

	/* Include do .h dos Tokens e Declaração de Funções */
%{

#include "tokens.h"

void trataToken (tokenType t);

void trataErro ();

%}

	/* Condicional para tratar comentários */
%x COMENTARIO

%%

	/* Ignorar Espaço e Tab */
[ \t] { }

	/* Palavras Reservadas */

"else"	 { trataToken(ELSE); }
"if"	 { trataToken(IF); }
"input"	 { trataToken(INPUT); }
"int"	 { trataToken(INT); }
"output" { trataToken(OUTPUT); }
"return" { trataToken(RETURN); }
"void"	 { trataToken(VOID); }
"while"	 { trataToken(WHILE); }
"write"	 { trataToken(WRITE); }

	/* Operadores */

"+"	{ trataToken(PLUS); }
"-"	{ trataToken(MINUS); }
"*"	{ trataToken(TIMES); }
"/"	{ trataToken(OVER); }
"<"	{ trataToken(LT); }
"<="	{ trataToken(LE); }
">"	{ trataToken(GT); }
">="	{ trataToken(GE); }
"=="	{ trataToken(EQ); }
"!="	{ trataToken(NEQ); }
"="	{ trataToken(ASSIGN); }

	/* Pontuações */

";"	{ trataToken(SEMI); }
","	{ trataToken(COMMA); }
"("	{ trataToken(LPAREN); }
")"	{ trataToken(RPAREN); }
"["	{ trataToken(LBRACK); }
"]"	{ trataToken(RBRACK); }
"{"	{ trataToken(LBRACE); }
"}"	{ trataToken(RBRACE); }

	/* Outros */

	/* NUM ( 0 a 9) */
[0-9]+	{ trataToken(NUM); }

	/* ID */
[a-zA-Z][a-zA-Z0-9]+	{ trataToken(ID); }

	/* Ignorar Comentários */
"//".+	{ }
	/* Entra no condicional de comentário */
"/*"	{ BEGIN(COMENTARIO); }
	/* Ignora o que está dentro */
<COMENTARIO>.	{ }
	/* Sai do condicional ao final do com. */
<COMENTARIO>"*/"	{ BEGIN(INITIAL); }


	/* STRING */
\".*\"	{ trataToken(STRING); }


%%

	/* Funções de tratamento */
void trataToken(tokenType t)
{
	printf("%d: %s -> %s\n", yylineno, yytext, TOKEN_TYPE_STRING(t));
}

void trataErro()
{
	printf("%d: %s -> UNKNOWN\n", yylineno, yytext);
}

	/* MAIN */
int main(void)
{
	yylex();
	return 0;
}
