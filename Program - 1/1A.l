%{
    #include<stdio.h>
    int p = 0;
    int id = 0;
    int op = 0;
%}

%%
[0-9]+  {id++; printf("The id is %s", yytext);}
[+*]    {op++; printf("The op is %s", yytext);}
[(]     p++;
[)]     p--;
%%

int main()
{
    printf("Enter the arithmetic expression");
    yylex();
    if(id == op+1 && p == 0 && op >= 1)
    {
        printf("Valid expression");
        printf("No of id = %d,\n No of op = %d", id, op);
    }
    else
    {
        printf("Invalid expression");
    }
}

int yywrap()
{
    return 1;
}