/*正如Unix的wc程序*/
%{
#include <string.h>

int chars = 0;
int words = 0;
int lines = 0;

int yywrap(void);

%}

%%
[a-zA-Z]+ 	{ words++; chars+=strlen(yytext); }
\n			{chars++; lines++;}
.			{chars++;}
%%

int yywrap(void)
{
    return 1;
}

int main(int argc,char** argv)
{
	yylex();
	printf("lines:%d,words:%d,chars:%d\n",lines,words,chars);
	return 0;
}