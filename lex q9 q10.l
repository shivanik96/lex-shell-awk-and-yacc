%{
#include “y.tab.h”
extern int yylval;
%}
%%
[a-zA-Z][0-9]+ { yylval=yytext; return NAME; }
[0-9]+   { yylval=atoi(yytext); return NUMBER; }
[ \t]   ; \n   { return 0; }
.    { return yytext[0]; }
%% 
