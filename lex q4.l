 
%{
#include<stdio.h>
%}
%%
if|Begin|End|then|for|while    {printf("Keyword");}
 [0-9]                       {printf("Integer");}          
 [A-Z|a-z]*                      {printf("Identifier");}
 [0-9]"."[0-9]                 {printf("Float");}
"+"|"-"|"*"|"/"|"="            {printf("opertaor");}
"//"|"/*"                      {printf("Comment");}
%%
int main()
{
yylex();
return 1;
}
int yywrap()
{
return 0;
}
