#ifndef GESTIONDUJEU_H
#define GESTIONDUJEU_H
#include <QObject>
#include "damierdyn.h"

class GestionDuJeu : public QObject
{
    Q_OBJECT
public:
    explicit GestionDuJeu(DamierDyn *parent = 0);
    Q_INVOKABLE void Init();
    void geneAlea();
    float ret(int x, int y);

    Q_INVOKABLE void toucheHaut();
    Q_INVOKABLE void toucheBas();
    Q_INVOKABLE void toucheDroite();
    Q_INVOKABLE void toucheGauche();

    Q_PROPERTY(QList<QString> cptQML READ readCompteur NOTIFY cptChanged);
    QList<QString> readCompteur();

    Q_PROPERTY(QList<QString> coulQML READ readCouleur NOTIFY cptChanged);
    QList<QString> readCouleur();

signals:
    void cptChanged();

public slots:

private:
    DamierDyn grille;
};

#endif // GESTIONDUJEU_H
