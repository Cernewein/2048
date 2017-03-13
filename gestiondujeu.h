#ifndef GESTIONDUJEU_H
#define GESTIONDUJEU_H
#include <QObject>

class GestionDuJeu : public QObject
{
    Q_OBJECT
public:
    explicit GestionDuJeu(QObject *parent = 0);
    Q_INVOKABLE void increment();
    Q_INVOKABLE void decrement();

    Q_PROPERTY(QString cptQML READ readCompteur NOTIFY cptChanged);

    QString readCompteur();

signals:
    void cptChanged();

public slots:

private:

};

#endif // GESTIONDUJEU_H
