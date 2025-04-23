/* 
 * Definição: seção para código do usuário. 
 */
import token.Token;

%%

/* 
 * Opções e Declarações: diretivas e macros. 
 */
%standalone
%line
%column
%class Scanner

%{
  Token token;
%}

/* Macros */
BRANCO = [ \t\r\n]+
PONTOEVIRGULA = ";"
VIRGULA = ","
DOISPONTOS = ":"
ABREPARENTESE = "("
FECHAPARENTESE = ")"
ABRECHAVES = "{"
FECHACHAVES = "}"
ABRECOLCHETE = "\["
FECHACOLCHETE = "\]"
ATRIBUICAO = "="
PONTO = "\."
DOISPONTOS = ":"
INTEIRO = 0|[1-9][0-9]*
ID = [_a-zA-Z][_a-zA-Z0-9]*

%%

"public"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada public"); token.imprimir(); }
"class"          { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada class"); token.imprimir(); }
"static"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada static"); token.imprimir(); }
"void"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada void"); token.imprimir(); }
"main"           { token = new Token(yyline, yycolumn, yytext(), "Identificador main"); token.imprimir(); }
"String"         { token = new Token(yyline, yycolumn, yytext(), "Tipo String"); token.imprimir(); }
"int"            { token = new Token(yyline, yycolumn, yytext(), "Tipo int"); token.imprimir(); }
"for"            { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada for"); token.imprimir(); }
"System"         { token = new Token(yyline, yycolumn, yytext(), "Classe System"); token.imprimir(); }
"out"            { token = new Token(yyline, yycolumn, yytext(), "Objeto out"); token.imprimir(); }
"println"        { token = new Token(yyline, yycolumn, yytext(), "Método println"); token.imprimir(); }

{ABREPARENTESE}  { token = new Token(yyline, yycolumn, yytext(), "Abre parêntese"); token.imprimir(); }
{FECHAPARENTESE} { token = new Token(yyline, yycolumn, yytext(), "Fecha parêntese"); token.imprimir(); }
{ABRECHAVES}     { token = new Token(yyline, yycolumn, yytext(), "Abre chaves"); token.imprimir(); }
{FECHACHAVES}    { token = new Token(yyline, yycolumn, yytext(), "Fecha chaves"); token.imprimir(); }
{ABRECOLCHETE}   { token = new Token(yyline, yycolumn, yytext(), "Abre colchete"); token.imprimir(); }
{FECHACOLCHETE}  { token = new Token(yyline, yycolumn, yytext(), "Fecha colchete"); token.imprimir(); }
{PONTOEVIRGULA}  { token = new Token(yyline, yycolumn, yytext(), "Ponto e vírgula"); token.imprimir(); }
{VIRGULA}        { token = new Token(yyline, yycolumn, yytext(), "Vírgula"); token.imprimir(); }
{DOISPONTOS}     { token = new Token(yyline, yycolumn, yytext(), "Dois pontos"); token.imprimir(); }
{PONTO}          { token = new Token(yyline, yycolumn, yytext(), "Ponto"); token.imprimir(); }
{ATRIBUICAO}     { token = new Token(yyline, yycolumn, yytext(), "Atribuição"); token.imprimir(); }
{INTEIRO}        { token = new Token(yyline, yycolumn, yytext(), "Número inteiro"); token.imprimir(); }
{ID}             { token = new Token(yyline, yycolumn, yytext(), "Identificador"); token.imprimir(); }
{BRANCO}         { /* Ignora espaços em branco */ }
.                { token = new Token(yyline, yycolumn, yytext(), "Caractere inválido"); token.dispararExcecao(); }
