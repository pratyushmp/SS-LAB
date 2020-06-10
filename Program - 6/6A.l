%{
    #include<stdio.h>
    int c = 0;
%}

%%
[/][/][a-zA-Z0-9 \t]*            {printf(" "); c++;}
[/][*][a-zA-Z0-9\t\n]*[*][/]    {printf(" "); c++;}
%%

main(int argc, char *argv[])
{
    yyin = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");
    yylex();
    printf("The no of comments are %d", c);
}

int yywrap()
{
    return 1;
}
