%%
#.*                             ;
\/\/.*                          ;
\/\*.*                          ;
.*\*\/.*                        ;
.*\(.*\).*                      ;

[1-9][0-9]*\.?[0-9]*            printf("%s\tNumbers",yytext);
\".*\"                          ;

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

int main() {
    FILE *fp;
    char filename[50];

    // Input the file name of the program
    printf("Enter the file name of the program: ");
    scanf("%s", filename);

    // Open file
    fp = fopen(filename, "r");

    if(fp == NULL) {
        printf("File does not exist or you don't have the permission to open it.\n");
        return 1;
    }

    // Read contents from file
    yyin = fp;
    yylex();

    return 1;
}


