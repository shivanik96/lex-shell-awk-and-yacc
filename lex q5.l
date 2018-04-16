digit [0-9]
letter [A-Za-z]
%{
int count;
%}
%%
{letter}({letter}|{digit})*	count++;
%%
int main() 
{
yylex();
printf ("number of identifiers = %d\n", count);
return 0;
}
int yywrap()
{
return 1;
}
