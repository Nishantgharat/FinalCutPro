%{
int len=0;
%}



%%
[a-zA-Z]+ {printf("No character other than alphabets");}
[0-9]+ {printf("No character other than numbers");}
[a-zA-Z0-9]+ {printf("Combination of Numbers and alphabets");}


.* {printf("character other than number and alphabets present"); }
%%

int yywrap() { }

int main()
{
yylex();
return 0;
}