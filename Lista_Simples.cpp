
#include <iostream>
#define MAX 10 // tamanho máximo para a área de armazenamento
using namespace std;

bool testaCheia (int tam){
     return (tam == MAX);
}

bool testaVazia (int tam){
     return (tam == 0);
}

void iniciaLista (int *tam){
     *tam = 0;
     return;
}

void inserir (int v[], int *tam, int e){
     if (testaCheia (*tam)){
                    cout << "ERRO!! Lista Cheia!";
                    return;
                    }
                    v[*tam]=e;
                    (*tam)++;
                    return;
}

void exibir (int v[], int n){
     int i;
     for(i=0;i<n;i++){
       cout << v[i]<<" ";
     }
     cout<<"\n";
     return;
}

int buscarSequencial (int v[], int n, int valor){
}

void remover (int v[], int *tam, int e){
}

// Prog. Principal
int main(){
	int v[MAX], i, temp, n, x;
        iniciaLista(&n); // variável pra controlar o tamanho da lista
	    cout << "Digite o tamanho da entrada: ";
        cin >> x;
        for (i = 0; i < x; i++){
		cout << "Digite um numero: " << endl;
		cin >> temp;
		inserir(v, &n, temp);
	}
	exibir(v,n);
	system("pause");
	return 0;
}

