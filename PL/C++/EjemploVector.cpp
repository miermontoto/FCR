#include <iostream>
using namespace std;

// Función: SumaDistintos
// Suma en destino[i] los elementos de origen que sean distintos de los de destino.
// Supone que los dos vectores son de la misma longitud
// Devuelve en sumados el número de elementos sumados
void SumaDistintos(int origen[], int destino[], unsigned int longVectores, unsigned int& sumados)
{
  unsigned int i;

  sumados = 0;
  for (i = 0; i < longVectores; i++)
  {
    if (origen[i] != destino[i]) 
    {
      destino[i] = origen[i] + destino[i];
      sumados++;
    }
  }
}

// Función: ImprimeVector
// Imprime en una línea el nombre del vector de enteros seguido de sus elementos
void ImprimeVector(char nombre[], int vector[], unsigned int longitud)
{
  unsigned int i;

  cout << nombre << ": ";

  for (i = 0; i < longitud; i++)
  {
      cout << vector[i] << " ";
  }
  cout << endl;
}

int main()
{
  unsigned int sumados;
  const unsigned int longVectores = 5;
  int vector1[longVectores] = {34, 12, 56, 17, 99};
  int vector2[longVectores] = {-8, 9, 56, 38, 99};

  char nombreVector1[8] = "vector1";
  char nombreVector2[8] = "vector2";

  ImprimeVector(nombreVector1, vector1, longVectores);
  ImprimeVector(nombreVector2, vector2, longVectores);

  SumaDistintos(vector1, vector2, longVectores, sumados);
  cout << "Tras sumar distintos:" << endl;
  ImprimeVector(nombreVector2, vector2, longVectores);
  cout << "Se han sumado " << sumados << " elementos" << endl;

  return 0;
}
