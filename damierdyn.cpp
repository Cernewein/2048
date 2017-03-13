#include "damierdyn.h"

DamierDyn::DamierDyn(int vd){
    Alloc();
    Init(vd);
}


DamierDyn::~DamierDyn(){
    if (T != NULL) {
        Free();
        T = NULL;
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

