#include <iostream>
using namespace std;

void vocales(char x[], unsigned int length) {
	unsigned int vocales = 0;
	unsigned int i = 0;
	for (i = 0; i < length; i++) {
		if (x[i] == 'a' || x[i] == 'e' || x[i] == 'i' || x[i] == 'o' || x[i] == 'u')
			vocales++;
	}
	cout << "Esta cadena tiene " << vocales << " vocales y " << length - vocales << " consontantes." << endl;
}

int main() {
	char cadena1[6] = "aeiou";
	char cadena2[7] = "prueba";

	vocales(cadena1, 6);
	vocales(cadena2, 7);

	return 0;
}