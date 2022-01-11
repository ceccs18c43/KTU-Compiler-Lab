
/*Definition Section*/
%{
    
%}

/*Starting character sequence for multiline comment*/
start \/\*
/*Ending character sequence for multiline comment*/
end \*\/

/*Rule Section*/
%%

 /*Regular expression for single line comment*/
\/\/(.*) ;
 /*Regular expression for multi line comment*/
"/*"[^*/]*"*/" ;

%%
int yywrap(){return(1);}
/*Driver function*/
int main(int k,char **argcv)
{
yyin=fopen("input.c","r");
yyout=fopen("out.c","w");
/*call the yylex function.*/
yylex();
return 0;
}

