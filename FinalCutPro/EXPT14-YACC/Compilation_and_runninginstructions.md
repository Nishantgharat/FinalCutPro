Compilation and running  instructions: 

lex Identifier.l
yacc -d identifier.y
gcc lex.yy.c y.tab.c -lfl
./a.out
