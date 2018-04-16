%{
#include<stdio.h>
int words, chars, blanks, lines;
%}
%%
[ \t]	{blanks++; words++;}
[\n]	{lines++; words++;chars++;}
.	{chars++;}
%%
int main()
{
yylex();
printf ("The number of Words = %d \n", words);
printf ("The number of Characters = %d \n", chars);
printf ("The number of Blank Spaces = %d \n", blanks);
printf ("The number of Lines = %d \n", lines);
printf ("\n");
}
int yywrap()
{
return 1;
}
