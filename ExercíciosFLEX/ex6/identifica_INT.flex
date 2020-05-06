/** area declaracoes **/

%{ /*codigo C*/
#include<stdio.h> 
#include<string.h> 
#include<stdlib.h>
  
int count = 0;
%}

	/*macros-ER*/
	//vazio

	
%%	/** area regras **/
(("-"[0-9]+)|[0-9]+) {printf("É inteiro.\n");}                   
([0-9]+)"."([0-9]+)  {printf("Erro lexico: não é inteiro\n");}
([0-9]+)","([0-9]+)  {printf("Erro lexico: não é inteiro\n");}
("-"[0-9]+)"."([0-9]+)  {printf("Erro lexico: não é inteiro\n");}
("-"[0-9]+)","([0-9]+)  {printf("Erro lexico: não é inteiro\n");}
.  {printf("Erro lexico: não é inteiro\n");}
%%	/** area rotinas **/
int main() 
{ 
       printf("\nEscreva pro mundo (CTRL^D terminar): ");
	yylex();
	printf("\nFIM\n");

} 
