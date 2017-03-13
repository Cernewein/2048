#ifndef DAMIERDYN_H
#define DAMIERDYN_H

#include <iostream>
using namespace std;

class DamierDyn
{
public:
    DamierDyn(int vd=0);
    DamierDyn(const DamierDyn &D);
    ~DamierDyn();

    void Print();
    void Init(int value);
    void Set(int x, int y, int value);

private:
    int L;
    int C;
    int** T;

    // Méthode privée (factorisation  de code)
    void Alloc();
    void Free();
};

#endif // DAMIERDYN_H
