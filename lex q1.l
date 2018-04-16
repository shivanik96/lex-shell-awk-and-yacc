%{
#include<stdio.h>
int countl, countc;
%}
%%
[\n]	{countl++; countc++;}
[A-Za-z0-9]	{countc++;}
.	{countc++;}
%%
int main()
{
yylex();
printf ("No. of lines = %d", countl);
printf ("No. of characters = %d", countc);
printf ("\n");
}
int yywrap()
{
return 1;
}
