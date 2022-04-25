%{
#include<stdio.h>
int lc=1, wc=0, ch=0;
%}
 
%%
[^ \n\t]+       {wc++, ch+=yyleng;}
\n          {lc++;}
%%

int yywrap() {
	return 1;
}
 
int main()
{
	yyin=fopen("sample.txt", "r");
    yylex();
     
    printf("\nNo. of lines=%d", lc); 
    printf("\nNo. of words=%d", wc);
    printf("\nNo. of other characters=%d", ch);
	return 0;
}