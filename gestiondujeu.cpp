#include "gestiondujeu.h"
#include "damierdyn.h"
#include <cstdlib>
#include <stdlib.h>
using namespace std;

GestionDuJeu::GestionDuJeu(QObject *parent){
    DamierDyn grille(4,4);
    grille.Print();
    cout<<grille.ret(1,3)<<endl;
}

void GestionDuJeu::ToucheHaut(){
    if (grille.HautPossible()){
        grille.Haut();
        geneAlea();
    }
}

void GestionDuJeu::ToucheBas(){
    if (grille.BasPossible()){
        grille.Bas();
        geneAlea();
    }
}

void GestionDuJeu::ToucheDroite(){
    if (grille.DroitePossible()){
        grille.Droite();
        geneAlea();
    }
}

void GestionDuJeu::ToucheGauche(){
    if (grille.GauchePossible()){
        grille.Gauche();
        geneAlea();
    }
}

void GestionDuJeu::geneAlea(){
    DamierDyn libres;
    int nb_libres = 0;
    cout<<"I'm here";
    for(int i=0;i<4;i++){ //On cherche dans la grille de jeu, une fois un mouvement effectué sur quelles cases on peut générer des nouveau nombres
        for (int j=0;j<4;j++){
            cout<<"I'm here";
            if(grille.ret(i,j)==0){
                nb_libres++;
                libres.Redim(nb_libres,2);
                libres.Set(nb_libres-1,0,i);
                libres.Set(nb_libres-1,1,j);
            }
        }
    }
    int alea = rand() % (nb_libres-1);
    int x = libres.ret(alea-1,0);
    int y = libres.ret(alea-1,1);
    grille.Set(x,y,2);
}

float GestionDuJeu::ret(int x,int y){
    return grille.ret(x,y);
}

void GestionDuJeu::Init(){
    grille.Init(0);
    cout<<"Jeu bien initialisé";
}
