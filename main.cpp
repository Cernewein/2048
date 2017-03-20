#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <iostream>
#include "gestiondujeu.h"
#include "damierdyn.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    GestionDuJeu gestion;
    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("grille", QVariant::fromValue(&gestion.grille));
    engine.rootContext()->setContextProperty("gestion", &gestion);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
