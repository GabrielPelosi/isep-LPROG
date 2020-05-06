%{

int count = 1;

%}

NUMS [0-9]{2}
LETRAS [A-Z]{2}
MATR {NUMS}-{NUMS}-{LETRAS}|{NUMS}-{LETRAS}-{NUMS}|{LETRAS}-{NUMS}-{NUMS}

%%

{MATR} printf("Matrícula portuguesa! Número de matriculas portuguesas testadas: %d \n", count++);

%%

int main(){
	printf("Bem-vindo, para sair aperte Ctrl+D");
	yylex();
	return 0;
	
}
