#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "gestiondujeu.h"
#include "damierdyn.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    DamierDyn grille;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("grille", QVariant::fromValue(&grille));
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
