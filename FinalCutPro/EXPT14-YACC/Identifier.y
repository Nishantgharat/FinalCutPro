%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(char *s);
%}
 
%token LETTER DIGITS NL UND;
 
%%
stmt:variable NL {printf("Valid Identifier");exit (0);}
variable:LETTER  alphanumeric;
alphanumeric: LETTER alphanumeric | DIGITS alphanumeric | UND alphanumeric | LETTER | DIGITS | UND;
%%
 
void yyerror(char *msg)
{
printf("Invalid Expression %s",msg);
}
 
int main()
{
printf("Enter Expression: ");
yyparse();
}



