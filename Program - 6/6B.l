%{
    #include<stdio.h>
    #include "ytab.h"
    extern int yylavl;
%}

%%
[+-*/=<>]       {printf("operator = %s", yytext); return OP;}
[0-9]+          {yylavl = atoi(yytext); printf("The no of digit is %d\n", yylavl); return DIGIT;}
int|char|bool|float|void    {printf("Keyword is %s", yytext); return KEY;}
[a-zA-Z0-9]+                {printf("Identifier %s\n", yytext); return ID;}
%%

int yywrap()
{
    return 1;
}