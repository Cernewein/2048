#include "damierdyn.h"
#include <iostream>
using namespace std;

DamierDyn::DamierDyn(int lignes, int colonnes, int v,QObject *parent){
    T = NULL;
    Redim(lignes,colonnes);
    Init(v);
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

void DamierDyn::Bas(){
    for (int y=0; y<4; y++){            // On parcours une à une chaque colonne
        int ValeurActive=NULL;          // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=NULL;                  // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int x=3; x>-1; x--){       // On parcours chaque ligne de bas en haut
                int valeur=T[x][y];
                if (valeur==0){         // 1er cas : la valeur rencontrée est un 0
                    if (depl==NULL){    // Si depl n'a pas encore été défini (c-a-c si le nombre le plus bas est un zéro, alors depl=x=3
                        depl=x;
                    }
                }
                else{                   // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==NULL){
                        if (depl==NULL){
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
                        ValeurActive=NULL;
                        depl+=-1;
                    }
                    else{
                        ValeurActive=valeur;
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
        int ValeurActive=NULL;          // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=NULL;                  // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int x=0; x<4; x++){       // On parcours chaque ligne de haut en bas
                int valeur=T[x][y];
                if (valeur==0){         // 1er cas : la valeur rencontrée est un 0
                    if (depl==NULL){    // Si depl n'a pas encore été défini (c-a-c si le nombre le plus bas est un zéro, alors depl=x=0
                        depl=x;
                    }
                }
                else{                   // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==NULL){
                        if (depl==NULL){
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
                        ValeurActive=NULL;
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
        int ValeurActive=NULL;          // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=NULL;                  // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int y=3; y>-1; y--){        // On parcours chaque colenne de haut en bas
                int valeur=T[x][y];
                if (valeur==0){         // 1er cas : la valeur rencontrée est un 0
                    if (depl==NULL){    // Si depl n'a pas encore été défini (c-a-c si le nombre le plus bas est un zéro, alors depl=x=3
                        depl=y;
                    }
                }
                else{                   // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==NULL){
                        if (depl==NULL){
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
                        ValeurActive=NULL;
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
        int ValeurActive=NULL;          // Valeur active correspond à la dernière valeur rencontrée (autre que 0)
        int depl=NULL;                  // depl correspond à la ligne sur laquelle il faudra déplacer la valeur rencontrée
        for (int y=0; y<4; y++){        // On parcours chaque colenne de haut en bas
                int valeur=T[x][y];
                if (valeur==0){         // 1er cas : la valeur rencontrée est un 0
                    if (depl==NULL){    // Si depl n'a pas encore été défini (c-a-c si le nombre le plus bas est un zéro, alors depl=x=3
                        depl=y;
                    }
                }
                else{                   // 2eme cas : il y a une donnée dans la case
                    if (ValeurActive==NULL){
                        if (depl==NULL){
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
                        ValeurActive=NULL;
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
        int ValeurActive=NULL;
        for (int x=0; x<4; x++){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=NULL){
                    return true;
                }
            }

        }
    }
    return false;
}

bool DamierDyn::HautPossible(){
    for (int y=0; y<4; y++){
        int ValeurActive=NULL;
        for (int x=3; x>-1; x--){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=NULL){
                    return true;
                }
            }

        }
    }
    return false;
}

bool DamierDyn::DroitePossible(){
    for (int x=0; x<4; x++){
        int ValeurActive=NULL;
        for (int y=0; y<4; y++){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=NULL){
                    return true;
                }
            }

        }
    }
    return false;
}

bool DamierDyn::GauchePossible(){
    for (int x=0; x<4; x++){
        int ValeurActive=NULL;
        for (int y=3; y>-1; y--){
            int valeur=T[x][y];
            if (valeur==ValeurActive){
                return true;
            }
            else if (valeur!=0){
                ValeurActive=valeur;
            }
            else{
                if(ValeurActive!=NULL){
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
    Init(0);
}

void DamierDyn::Init(int x1){
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
    if(y1>0 && y1<=L && y2>0 && y2<=C){
        T[y1][y2] = y3;
    }
}

float DamierDyn::ret(int x,int y){
    return T[x][y];
}

