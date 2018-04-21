# lex-shell-awk-and-yacc
FOR YACC:-
Compile like this -
  ~$ flex lex_file.l
  ~$ yacc -d yacc_file.y
  ~$ gcc lex.yy.c y.tab.c -ll
