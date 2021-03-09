#include <iostream>
#include <limits.h>
using namespace std;

int main() {
    int a, b;
    cin >> a;
    cin >> b;
    if ((b < 0) && (a > INT_MAX + b) || (b > 0) && (a < INT_MIN + b)) cout << "Desbordamiento.";
    else cout << a - b << endl;
}