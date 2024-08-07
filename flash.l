%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

DIGIT [0-9]
ALPHA [a-zA-Z]

%%
{DIGIT}+ {
    printf("Number: %s\n", yytext);
}

{ALPHA}+ {
    printf("Word: %s\n", yytext);
}

[\t\n] ;

%%

int main() {
    yylex();
    return 0;
}