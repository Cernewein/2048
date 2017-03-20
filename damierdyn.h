#ifndef DAMIERDYN_H
#define DAMIERDYN_H
#include <QObject>
#include <iostream>
using namespace std;

class DamierDyn : public QObject
{
    Q_OBJECT
public:
    explicit DamierDyn(int lignes = 4, int colonnes = 4,int vd=0,QObject *parent = 0);
    explicit DamierDyn(const DamierDyn &d,QObject *parent = 0);
    ~DamierDyn();

    void Droite();
    void Gauche();
    void Haut();
    void Bas();
    void Init(int x1);
    void Set(int y1, int y2, int y3);
    void Print();
    void Redim(int x, int y);
    float ret(int x, int y);
    bool DroitePossible();
    bool GauchePossible();
    bool HautPossible();
    bool BasPossible();

signals:


public slots:

private:
    int L;
    int C;
    int** T;

};

#endif // DAMIERDYN_H
