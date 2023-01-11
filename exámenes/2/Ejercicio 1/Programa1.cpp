
#include <iostream>

using namespace std;

int main()
{

	int a;
	int b; // Tiene que poder tener signo para que se comparen correctamente a y b.
	int c;
	unsigned int d;
	int e;
	unsigned int f;
	
	float g = 4.4;
	float h = -4.4;
	float i = 5.9;
	float j = -5.9;
	float k = -3.6;
	float l = 3.6;

	char cadena[] = "áígZñp";
	char texto[] = "Ípâóùo";

	a = -2185;
	b = 278;
	c = -5784;
	d = 372;
	e = -321;
	f = 514;
	
	if (b > a) {
		cout << b << " es mayor que " << a << endl;
	}
	else {
		cout << b << " es menor o igual que " << a << endl;
	}
	
	//Corrige el programa para que el mensaje de salida que se muestra sea correcto (sin modificar nada entre las líneas 32 y 38).

	system("pause");

	return 0;
}