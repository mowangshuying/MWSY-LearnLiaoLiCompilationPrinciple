%{
    // 可以在此处写c++或者c代码
    void yyerror(const char* s);
%}

%%
program:
        ;
%%

// 可以在此处写c++或者c代码
void yyerror(const char* s)
{

}

int main()
{
    yyparse();
    return 0;
}