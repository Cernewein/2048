#include "damierdyn.h"

DamierDyn::DamierDyn(int vd){
    Alloc();
    Init(vd);
}

DamierDyn::DamierDyn(const DamierDyn &D) {
    Alloc();

    for(int i=0; i<4; i++) {
        for(int j=0; j<4; j++)
            T[i][j] = D.T[i][j];
    }
}

DamierDyn::~DamierDyn(){
    if (T != NULL) {
        Free();
        T = NULL;
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

void DamierDyn::Free(){
    for (int i=0; i<4; i++) {
        delete [] T[i];
    }
    delete [] T;
}

void DamierDyn::Alloc(){
    T = new int*[L];
    for(int i=0; i<4; i++)
        T[i] = new int[4];
}

void DamierDyn::Print(){
    cout << endl;
    for(int i=0; i<4; i++) {
        cout << endl;
        for(int j=0; j<4; j++){
            cout << T[i][j] << ", ";
        }
    }
}

void DamierDyn::Init(int value){
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
            T[i][j]=value;
}

void DamierDyn::Set(int x, int y, int value) {
    T[x][y]=value;
}


void DamierDyn::ReDim(int l, int c, int vd) {
    Free();
    L = l;
    C = c;
    Alloc();
    Init(vd);
}

ostream& operator <<(ostream& sortie, DamierDyn& D){
    sortie<<endl;
    for(int i=0; i<D.L; i++){
        sortie<<endl;
        for(int j=0; j<D.C; j++){
            sortie<<D.T[i][j]<<",";
        }
    }
    return sortie;
}
