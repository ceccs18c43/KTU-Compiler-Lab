%%

#.*                             ;
[1-9][0-9]*\.?[0-9]*            printf("%s\tNumbers",yytext);

auto        |
break       |
case        |
char        |
continue    |
do          |
default     |
const       |
double      |
else        |
enum        |
extern      |
for         |
if          |
goto        |
float       |
int         |
long        |
register    |
return      |
signed      |
static      |
sizeof      |
short       |
struct      |
switch      |
typedef     |
union       |
void        |
while       |
volatile    |
unsigned                        printf("%s\t  keyword\n",yytext);

[_a-zA-Z][_a-zA-Z0-9]*          printf("%s \t identifier\n ",yytext);

\+          |                   
\-          |                    
\*          |                   
\/          |                    
\%          |                    
\=                              printf("%s \t operator \n",yytext);

[,;]                            ;

.                               ;
%%

int yywrap() {
    return(1);
}
int main()
{
yyin=fopen("filename.c","r");
yyout=fopen("out.c","w");
/*call the yylex function.*/
yylex();
return 0;
}
