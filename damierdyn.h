#ifndef DAMIERDYN_H
#define DAMIERDYN_H
#include <QObject>
#include <iostream>
using namespace std;

class DamierDyn : public QObject
{
    Q_OBJECT
public:
    explicit DamierDyn(int vd=0,QObject *parent = 0);
    ~DamierDyn();

    Q_INVOKABLE void Print();
    Q_INVOKABLE void Init(int value);
    Q_INVOKABLE void Set(int x, int y, int value);

private:
    int L;
    int C;
    int** T;

    // Méthode privée (factorisation  de code)
    void Alloc();
    void Free();
};

#endif // DAMIERDYN_H
