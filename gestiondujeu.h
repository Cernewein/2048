#ifndef GESTIONDUJEU_H
#define GESTIONDUJEU_H
#include <QObject>
#include "damierdyn.h"

class GestionDuJeu : public QObject
{
    Q_OBJECT
public:
    explicit GestionDuJeu(QObject *parent = 0);
    Q_INVOKABLE void Init();
    void geneAlea();
    float ret(int x, int y);

    Q_INVOKABLE void ToucheHaut();
    Q_INVOKABLE void ToucheBas();
    Q_INVOKABLE void ToucheDroite();
    Q_INVOKABLE void ToucheGauche();

signals:


public slots:

private:
    DamierDyn grille;
};

#endif // GESTIONDUJEU_H
