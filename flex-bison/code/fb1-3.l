/*识别出用于计算器的记号并把它们输出*/

%{
int yywrap(void);
%}

%%
"+"			{printf("PLUS\n");};
"-" 		{printf("MINUS\n");};
"*" 		{printf("TIMES\n");};
"/" 		{printf("DIVIDE\n");};

"|" 		{printf("ABS\n");};
[0-9]+ 		{printf("NUMBER %s\n", yytext);};
\n 			{printf("NEWLINE\n");};
[ \t] 		{ };
.			{printf("Mystery character %s\n", yytext);};
%%

int yywrap(void)
{
    return 1;
}

int main(int argc,char** argv)
{
	yylex();
	return 0;
}
