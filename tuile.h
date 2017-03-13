#ifndef TUILE_H
#define TUILE_H


#include <QObject>

class Tuile : public QObject
{
    Q_OBJECT
public:
    explicit Tuile(QObject *parent = 0);
    Q_INVOKABLE void droite();
    Q_INVOKABLE void gauche();

signals:
    void position();

public slots:

private:
    int positionx;
    int positiony;
    int valeur;
};

#endif // TUILE_H
