/** area declaracoes **/

%{ /*codigo C*/
%}

%%	/** area regras **/
[1-9]* printf("%s", yytext);
. printf(" ");
%%	/** area rotinas **/
main()
{
  printf("\nCTRL^D terminar\n");
  yylex();
  printf("\nFIM\n");
}
