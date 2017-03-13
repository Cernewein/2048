#include "tuile.h"

Tuile::Tuile(QObject *parent) : QObject(parent)
{
    positionx=0;
    positiony=0;
    valeur=2;
}

void Tuile::droite() {
    positiony=3;
    position();
}

void Tuile::gauche() {
    positiony=0;
    position();
}
