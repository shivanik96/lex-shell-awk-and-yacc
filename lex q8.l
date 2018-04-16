%{
    #include<stdio.h>
    int flag=1;
    int op=0,dig=0,top=-1;
    char st[10];
%}
digit [0-9]+
oper [+*/-]
%%
['(']                  {  st[++top]='(';  }
[')']                  {  flag=1;
                           if((st[top]!='(') && (top!=-1))
                            {
                               printf("\n Invalid Expression");
                               exit(0);
                            }
                            top--;
                       }
{digit}                {  dig++;   }
{oper}/{digit}         {  op++;    }
{oper}/['(']           {  op++;    }
.                      {printf("\nInvalid Expression"); exit(0);}
%%
int main()
{
 printf("\nEnter arithmetic expression\n");
 yylex();
 if(((op+1==dig) || (op==dig)) && (top==-1))
 {
  printf("\nValid Expression");
  printf("\nNo. of operators=%d\nno. of operands=%d",op,dig);
 }
 else
   printf("\nInvalid expression");
}
int yywrap()
{
return 1;
}
