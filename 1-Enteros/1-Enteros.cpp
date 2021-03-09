#include <iostream>
using namespace std;

int main()
{
	const int UN_MILLON = 1000000;

	int contador = 0;

	for (int i = 0; i < 3000 * UN_MILLON; i++)

		contador++;

	cout << "contador " << contador << endl;
}
