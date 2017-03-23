#include "gestiondujeu.h"
#include "damierdyn.h"
#include <cstdlib>
#include <stdlib.h>
using namespace std;

GestionDuJeu::GestionDuJeu(DamierDyn *parent): QObject(parent),grille(4,4,0,parent)
{
    //DamierDyn grille(4,4);
    geneAlea();
    cptChanged();
}

QList<QString> GestionDuJeu::readCompteur()
{   QList<QString> l;
    for(int i=0; i<4;i++){
        for(int j=0;j<4;j++){
            float number = ret(i,j);
            if(number == 0){
                l.append(QString::fromStdString(" "));
            }
            else {
                l.append(QString::number(ret(i,j)));
            }
        }
    }
    return l;
}

QList<QString> GestionDuJeu::readCouleur()
{   QList<QString> l;
    for(int i=0; i<4;i++){
        for(int j=0;j<4;j++){
            float number = ret(i,j);
            if(number == 0){
                l.append(QString::fromStdString("#c3bcbc"));
            }
            else if(number == 2){
                l.append(QString::fromStdString("#ffffff"));
            }
            else if(number == 4){
                l.append(QString::fromStdString("#fffee4"));
            }
            else if(number == 8){
                l.append(QString::fromStdString("#ffd58b"));
            }
            else if(number == 16){
                l.append(QString::fromStdString("#ffc781"));
            }
            else if(number == 32){
                l.append(QString::fromStdString("#ffba6b"));
            }
            else if(number == 64){
                l.append(QString::fromStdString("#ffa95d"));
            }
            else if(number == 128){
                l.append(QString::fromStdString("#f9ff79"));
            }
            else if(number == 256){
                l.append(QString::fromStdString("#ffee2e"));
            }
            else if(number == 512){
                l.append(QString::fromStdString("#ff8e1d"));
            }
            else if(number == 1024){
                l.append(QString::fromStdString("#ff7563"));
            }
            else if(number == 2048){
                l.append(QString::fromStdString("#ff2020"));
            }
            else{
                l.append(QString::fromStdString("#de1b1b"));
            }

        }
    }
    return l;
}

void GestionDuJeu::toucheHaut(){
    if (grille.HautPossible()){
        grille.Haut();
        cout<<"Touche Haut";
        cout<<endl;
        grille.Print();
        cout<<endl;
        geneAlea();
        grille.Print();
    }
    cptChanged();
}

void GestionDuJeu::toucheBas(){
    if (grille.BasPossible()){
        grille.Bas();
        cout<<"Touche Bas";
        cout<<endl;
        grille.Print();
        cout<<endl;
        geneAlea();
        grille.Print();
    }
    cptChanged();
}

void GestionDuJeu::toucheDroite(){
    if (grille.DroitePossible()){
        grille.Droite();
        cout<<"Touche Droite";
        cout<<endl;
        grille.Print();
        cout<<endl;
        geneAlea();
        grille.Print();
    }
    cptChanged();
}

void GestionDuJeu::toucheGauche(){
    if (grille.GauchePossible()){
        grille.Gauche();
        cout<<"Touche Gauche";
        cout<<endl;
        grille.Print();
        cout<<endl;
        geneAlea();
        grille.Print();
    }
    cptChanged();
}

void GestionDuJeu::geneAlea(){
    //cout<<"I'm here";
    DamierDyn libres(0,0);
    int nb_libres = 0;
    for(int i=0;i<4;i++){ //On cherche dans la grille de jeu, une fois un mouvement effectué sur quelles cases on peut générer des nouveau nombres
        for (int j=0;j<4;j++){
            if(grille.ret(i,j)==0){
                nb_libres++;
                libres.Redim_copie(nb_libres,2);
                libres.Set(nb_libres-1,0,i);
                libres.Set(nb_libres-1,1,j);
            }
        }
    }
    libres.Print();
    int alea = rand() % (nb_libres);
    cout<<alea<<endl;
    int x = libres.ret(alea,0);
    int y = libres.ret(alea,1);
    grille.Set(x,y,2);
    cptChanged();
}

float GestionDuJeu::ret(int x,int y){
    return grille.ret(x,y);
}

void GestionDuJeu::Init(){
    grille.Init(0);
    cptChanged();
    cout<<"Jeu bien initialisé";
}
