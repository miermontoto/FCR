#include <iostream>
using namespace std;


void imprimirVector(int vector[], unsigned int longitud) {
	unsigned int i = 0;
	for (i = 0; i < longitud; i++)
	{
		cout << vector[i] << " ";
	}
	cout << endl;
}

void valorAbsoluto(int x[], unsigned int length) {
	unsigned int i = 0;
	for (i = 0; i < length; i++) {
		if (x[i] < 0) x[i] += -x[i] * 2;
	}
}

void quitarCeros(int x[], unsigned int length) {
	unsigned int i = 0;
	for (i = 0; i < length; i++) {
		if (x[i] < 0) x[i] = 0;
	}
}

int main() 
{
	int vector1[6] = { -3, -2, -1, 2, 4, 6 };
	int vector2[6] = { -7, -4, -1, 1, 2, 3 };

	imprimirVector(vector1, 6);
	imprimirVector(vector2, 6);

	quitarCeros(vector1, 6);
	quitarCeros(vector2, 6);

	imprimirVector(vector1, 6);
	imprimirVector(vector2, 6);

	return 0;
}