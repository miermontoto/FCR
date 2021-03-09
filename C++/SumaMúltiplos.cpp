#include <iostream>
using namespace std;

void sumaTotal(int i, int& sumaInt, short& sumaShort, long& sumaLong, long long& sumaLongLong) {
    sumaInt = sumaInt + i;
    sumaShort = sumaShort + i;
    sumaLong = sumaLong + i;
    sumaLongLong = sumaLongLong + i;
}

int main() {
    int sumaInt = 0;
    short sumaShort = 0;
    long sumaLong = 0;
    long long sumaLongLong = 0;

    for(unsigned int i=3; i < 1000000; i++) {
        if(i%3==0) sumaTotal(i, sumaInt, sumaShort, sumaLong, sumaLongLong);
    }

    cout << "sumaShort = " << sumaShort << endl << "sumaInt = " << sumaInt << endl << "sumaLong = " << sumaLong << endl << "sumaLongLong = " << sumaLongLong << endl;

    return 0;
}