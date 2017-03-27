#include "damierdyn.h"
#include <iostream>
using namespace std;

DamierDyn::DamierDyn(int lignes, int colonnes, int v,QObject *parent){
    T = NULL;
    Redim(lignes,colonnes);
    Init(v);
    score=0;
}

DamierDyn::DamierDyn(const DamierDyn &d,QObject *parent){
    T = NULL;
    Redim(d.L,d.C);
    for(int i=0; i<L; i++){
        for(int j=0; j<C; j++){
            T[i][j] = d.T[i][j];
        }
    }

}

int DamierDyn::getScore(){
    return (score);
}

void DamierDyn::Bas(){
    for (int y=0; y<4; y++){                // On parcours une à une chaque colonne
        int ValeurActive=-1;                // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=-1;                        // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int x=3; x>-1; x--){           // On parcours chaque ligne de bas en haut
                int valeur=T[x][y];
                if (valeur==0){             // 1er cas : la valeur rencontrée est un 0
                    if (depl==-1){          // Si depl n'a pas encore été défini (c-a-d si le nombre le plus bas est un zéro, alors depl=x=3
                        depl=x;
                    }
                }
                else{                       // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==-1){  // Une valeur de -1 signifie que la variable ValeurActive n'a pas été initialisée
                        if (depl==-1){      // Une valeur de -1 signifie que la variable depl n'a pas été initialisée
                            depl=x;
                        }
                        if (x!=depl){
                            T[x][y]=0;
                        }
                        T[depl][y]=valeur;
                        ValeurActive=valeur;
                    }
                    else if (ValeurActive==valeur){ // Cas ou on fusionne 2 tuiles de valeures identiques
                        T[x][y]=0;
                        T[depl][y]=valeur*2;
                        score+=(valeur*2);
                        ValeurActive=-1;            // On réinitialise valeur active pour que la nouvelle tuile ne soit pas directement fusionnée
                        // Ex : 4,2,2,0 doit donner, en poussant à droite : 0,0,4,4 et non 0,0,0,8.
                        depl+=-1;
                    }
                    else{
                        ValeurActive=valeur;        // Cas ou on empile 2 cases de valeurs différentes
                        if (x!=depl-1){
                            T[x][y]=0;
                        }
                        T[depl-1][y]=valeur;
                        depl+=-1;
                    }
                }
        }
    }
}

void DamierDyn::Haut(){
    for (int y=0; y<4; y++){            // On parcours une à une chaque colonne
        int ValeurActive=-1;          // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=-1;                  // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int x=0; x<4; x++){       // On parcours chaque ligne de haut en bas
                int valeur=T[x][y];
                if (valeur==0){         // 1er cas : la valeur rencontrée est un 0
                    if (depl==-1){    // Si depl n'a pas encore été défini (c-a-c si le nombre le plus bas est un zéro, alors depl=x=0
                        depl=x;
                    }
                }
                else{                   // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==-1){
                        if (depl==-1){
                            depl=x;
                        }
                        if (x!=depl){
                            T[x][y]=0;
                        }
                        T[depl][y]=valeur;
                        ValeurActive=valeur;
                    }
                    else if (ValeurActive==valeur){
                        T[x][y]=0;
                        T[depl][y]=valeur*2;
                        score+=(valeur*2);
                        ValeurActive=-1;
                        depl+=1;
                    }
                    else{
                        ValeurActive=valeur;
                        if (x!=depl+1){
                            T[x][y]=0;
                        }
                        T[depl+1][y]=valeur;
                        depl+=1;
                    }
                }
        }
    }
}

void DamierDyn::Droite(){
    for (int x=0; x<4; x++){            // On parcours une à une chaque ligne
        int ValeurActive=-1;          // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=-1;                  // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int y=3; y>-1; y--){        // On parcours chaque colenne de haut en bas
                int valeur=T[x][y];
                if (valeur==0){         // 1er cas : la valeur rencontrée est un 0
                    if (depl==-1){    // Si depl n'a pas encore été défini (c-a-c si le nombre le plus bas est un zéro, alors depl=x=3
                        depl=y;
                    }
                }
                else{                   // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==-1){
                        if (depl==-1){
                            depl=y;
                        }
                        if (y!=depl){
                            T[x][y]=0;
                        }
                        T[x][depl]=valeur;
                        ValeurActive=valeur;
                    }
                    else if (ValeurActive==valeur){
                        T[x][y]=0;
                        T[x][depl]=valeur*2;
                        score+=(valeur*2);
                        ValeurActive=-1;
                        depl+=-1;
                    }
                    else{
                        ValeurActive=valeur;
                        if (y!=depl-1){
                            T[x][y]=0;
                        }
                        T[x][depl-1]=valeur;
                        depl+=-1;
                    }
                }
        }
    }
}

void DamierDyn::Gauche(){
    for (int x=0; x<4; x++){            // On parcours une à une chaque ligne
        int ValeurActive=-1;          // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=-1;                  // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int y=0; y<4; y++){        // On parcours les colonnes de gauche à droite
                int valeur=T[x][y];
                if (valeur==0){         // 1er cas : la valeur rencontrée est un 0
                    if (depl==-1){    // Si depl n'a pas encore été défini (c-a-c si le nombre le plus bas est un zéro, alors depl=x=3
                        depl=y;
                    }
                }
                else{                   // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==-1){
                        if (depl==-1){
                            depl=y;
                        }
                        if (y!=depl){
                            T[x][y]=0;
                        }
                        T[x][depl]=valeur;
                        ValeurActive=valeur;
                    }
                    else if (ValeurActive==valeur){
                        T[x][y]=0;
                        T[x][depl]=valeur*2;
                        score+=(valeur*2);
                        ValeurActive=-1;
                        depl+=1;
                    }
                    else{
                        ValeurActive=valeur;
                        if (y!=depl+1){
                            T[x][y]=0;
                        }
                        T[x][depl+1]=valeur;
                        depl+=1;
                    }
                }
        }
    }
}

bool DamierDyn::BasPossible(){
    for (int y=0; y<4; y++){
        int ValeurActive=-1;
        for (int x=0; x<4; x++){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=-1){
                    return true;
                }
            }

        }
    }
    return false;
}

bool DamierDyn::HautPossible(){
    for (int y=0; y<4; y++){
        int ValeurActive=-1;
        for (int x=3; x>-1; x--){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=-1){
                    return true;
                }
            }

        }
    }
    return false;
}

bool DamierDyn::DroitePossible(){
    for (int x=0; x<4; x++){
        int ValeurActive=-1;
        for (int y=0; y<4; y++){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=-1){
                    return true;
                }
            }

        }
    }
    return false;
}

bool DamierDyn::GauchePossible(){
    for (int x=0; x<4; x++){
        int ValeurActive=-1;
        for (int y=3; y>-1; y--){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=-1){
                    return true;
                }
            }

        }
    }
    return false;
}

DamierDyn::~DamierDyn(){
    if(T != NULL){
        for(int i=0; i<L;i++){
            delete [] T[i];
        }
        delete [] T;
    }
    T = NULL;
}

void DamierDyn::Redim(int x, int y){
    if(T != NULL){
        for(int i=0; i<L;i++){
            delete [] T[i];
        }
        delete [] T;
    }
    L = x;
    C = y;
    T = new int*[L];
    for(int k = 0; k<L; k++){
        T[k] = new int[C];
    }
}

void DamierDyn::Redim_copie(int x, int y){
    DamierDyn* copie = new DamierDyn(*this);
    for(int i=0; i<L;i++){
        delete [] T[i];
    }
    delete [] T;
    L = x;
    C = y;
    T = new int*[L];
    for(int k = 0; k<L; k++){
        T[k] = new int[C];
    }
    for(int i=0; i<copie->L; i++){
        for(int j=0; j<copie->C; j++){
            T[i][j] = copie->T[i][j];
        }
    }
}

void DamierDyn::Init(int x1){
    score=0;
    for(int i=0; i<L; i++){
        for(int j=0; j<C; j++){
            T[i][j] = x1;
        }
    }
}

void DamierDyn::Print(){
    for(int i=0; i<L; i++){
        for(int j=0; j<C; j++){
            cout<<T[i][j]<<" ; ";
        }
        cout<< endl;
    }
}

void DamierDyn::Set(int y1, int y2, int y3){
    if(y1>=0 && y1<=L && y2>=0 && y2<=C){
        T[y1][y2] = y3;
    }
}

float DamierDyn::ret(int x,int y){
    return T[x][y];
}

