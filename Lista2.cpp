#include <iostream>
#define TAMANHO 40
using namespace std;

void iniciaLista (int *t){
     *t = 0;
}

bool inserir(int v[], int *n, int e){
	if (*n == TAMANHO){
		return false;
	}else{
		v[*n] = e;
		(*n)++;
		return true;
    }
}

void percorrer(int v[], int n){
	for (int i = 0; i < n; i++){
		cout <<  v[i] << " ";
    }
	cout << "\n\n";
}

int buscarSequencial(int v[], int n, int valor){
	for (int i = 0; i < n; i++){
		if (v[i] == valor) return i;
	}
	return -1;
}

void remover(int v[], int &n, int e){
	int pos;
	if (n == 0){
		cout << "\nERRO : Lista vazia. \n";
		return; // return; sai da fun��o sem retornar valor algum
	}
	pos = buscarSequencial(v,n,e);
	if (pos == -1){
		cout << "\nERRO : Valor n�o encontrado. \n";
		return;
	}
	v[pos] = v[n-1];
	n--;
}


void showIn(int v[], int *tam){
     int x;
     cout << "Digite um numero: ";
		cin >> x;
		if(inserir(v, tam, x)){
           cout<<"\n inncluindo...";
           }else{
                 cout<<"ERRO de inclusao";
                 }
                 return;
}

// Prog. Principal
int main(){
	int v[TAMANHO], tam, i, temp, x;
    iniciaLista (&tam);
    cout << "Informe o tam da entrada inicial: ";
    cin >> x;
	for (i = 0; i < x; i++){
		showIn(v, &tam);
	}
	percorrer(v,tam);
	cout << "\nDigite um numero pra procurar: ";
	cin >> temp;
	i = buscarSequencial(v,tam,temp);
	if (i == (-1)){
		cout << "\nNao achei " << temp << "...\n";
	}else{
		cout << "\nAchei " << temp << " na posicao " << i << "...\n";
	}
	cout << "\nDigite um numero pra excluir: ";
	cin >> temp;
	remover(v,tam,temp);
	percorrer(v,tam);
	system("pause");
	return 0;
}
