/** area declaracoes **/

%{ /*codigo C*/

int countAlg = 0;
int countLetra = 0;
int countLinhas = 0;
int countT = 0;
int countCaracNaoIdent = 0;
int countOutro = 0;
%}

NUMS [0-9]
LETRAS [A-Za-z]

%%	/** area regras **/
{NUMS} {countAlg++; printf("Número de algarismo: %d ", countAlg);}
{LETRAS} {countLetra++; printf("Número de letras: %d", countLetra);}
\t {countT++; printf("Número de Tabulações %d ", countT);}
\n {countLinhas++; printf("Número de Linhas %d", countLinhas);}
.	{countOutro++;printf("Número de Linhas %d", countOutro);}
%%	/** area rotinas **/
main()
{
	printf("\nEscreva pro mundo (CTRL^D terminar): ");
	yylex();
	printf("\nFIM\n");
}
	
