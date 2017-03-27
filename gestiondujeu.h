#ifndef GESTIONDUJEU_H
#define GESTIONDUJEU_H
#include <QObject>
#include "damierdyn.h"

class GestionDuJeu : public QObject
{
    Q_OBJECT
public:
    explicit GestionDuJeu(DamierDyn *parent = 0);
    Q_INVOKABLE void init();
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

    Q_PROPERTY(QList<QString> bestQML READ readBest NOTIFY cptChanged);
    QList<QString> readBest();

    Q_PROPERTY(QString perduQML READ readPerdu NOTIFY cptChanged);
    QString readPerdu();

signals:
    void cptChanged();

public slots:

private:
    DamierDyn grille;
    QString score;
    QString best;
    QString perdu;
};

#endif // GESTIONDUJEU_H
