
void showEroor();



comment  [;][;][a-zA-Z][a-z0-9]*
number [0-9]*
if   "if"
ID       [a-zA-Z][a-z0-9]*
string   [\"][a-z][a-z0-9.]*[\"]



%%
"+"            	{printf("OP_PLUS ");}
"-"            	{printf("OP_MINUS ");}
"*"            	{printf("OP_MULT ");}
"/"            	{printf("OP_DIV ");}
"("				{printf("OP_OP ");}
")"				{printf("OP_CP ");}
"**"			{printf("OP_DBLMULT ");}
","				{printf("OP_COMMA ");}



"and"			{printf("KW_AND ");}
"or"			{printf("KW_OR ");}
"not"			{printf("KW_NOT ");}
"equal"			{printf("KW_EQUAL ");}
"less"			{printf("KW_LESS ");}
"nill"			{printf("KW_NIL ");}
"list"			{printf("KW_LIST ");}
"append"		{printf("KW_APPED ");}
"concat"		{printf("KW_CONCAT ");}
"set"			{printf("KW_SET ");}
"deffun"		{printf("KW_DEFFUN ");}
"for"			{printf("KW_FOR ");}
if 				{printf("KW_IF ");}
"exit"			{printf("KW_EXIT ");}
"load"			{printf("KW_LOAD ");}
"disp"			{printf("KW_DISP ");}
"true"			{printf("KW_TRUE ");}
"false"			{printf("KW_FALSE ");}

{comment}		{printf("COMMENT");}
";"				{printf("SEMICOLLUM" );}


{number}        {printf(" VALUE ");}
{ID}			{printf("IDENTIFIER ");}
{string}		{printf("STRING ");}



%%





 int main(int argc,char** argv){



yylex();


}

void showEroor(){
	printf("Errror occur!!!!\n");
}