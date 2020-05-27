#include<stdio.h>
extern int yylex();
extern int yyparse();
extern FILE *yyin;
int main()
{
    FILE *myfile = fopen("sample_input.c", "r");
    if(!myfile)
    {
        pritnf("Can't open the file");
        return -1;
    }

    yyin = myfile;

    do
    {
        yyparse();
    }
    while(!feof(yyin));
    printf("Numbers = %d\n Keywords = %d\n Identifiers = %d\n Operators = %d\n, dig, key, id, op");
    return 0;
}

void yyerror()
{
    printf("Parse Error! Message");
    exit(-1);
}

%{
    #include<stdio.h>
    #include<stdlib.h>
    int dig = 0, id = 0, key = 0, op = 0;
%}

%token DIGIT ID KEY OP

%%
input: DIGIT input {dig++;}
| ID input {id++;}
| KEY input {key++;}
| OP input {op++;}
| DIGIT {dig++;}
| ID {id++;}
| KEY {key++;}
| OP {op++;}
;
%%
