%{
    #include<stdio.h>
    #include "y.tab.h"
    extern int yylval;
%}

%%
[+|-|*|/|=|<|>]       {printf("operator = %s", yytext); return OP;}
[0-9]+          {yylval = atoi(yytext); printf("The no of digit is %d\n", yylval); return DIGIT;}
int|char|bool|float|void|for|do|while|if|else|return|void   {printf("Keyword is %s", yytext); return KEY;}
[a-zA-Z0-9]+                {printf("Identifier %s\n", yytext); return ID;}
%%

int yywrap()
{
    return 1;
}
