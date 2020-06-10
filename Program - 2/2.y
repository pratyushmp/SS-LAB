%{
    #include<stdio.h>
    #include<stdlib.h>
    int yylex();
    int yyerror();
%}

%token A B

%%
input:S'\n' {printf("String has been accepted\n"); exit(0);}
S:A S1 B|B
S1:;|A S1
%%

int main() 
{
    printf("Enter the string:\n");
    yyparse();    
    return 0;
}

int yyerror() 
{
    printf("String has been rejected\n");
    exit(0);
}
