import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 480
    height: 640
    title: qsTr("2048")

    MainForm {
            anchors.fill: parent
            id:page
            focus:page.fonddejeu

            } Keys.onPressed: {
        //gestion.geneAlea(); //fait crasher l'appli.. Il ne semble même pas accéder à la fonction
        console.log('Je suis là');
        var valeur = gestion.ret(2,2);
        console.log(valeur);
        stateGroup.state = 'State0_0_2';
            newGame {onClicked: gestion.Init();}
    }
    StateGroup {
                  id: stateGroup
                      states: [
                          State {
                              name: "State0_0_2"
                              PropertyChanges {
                                  target: page.rect0_0
                                  color: "blue"
                              }
                          }
                      ]
                 }
}
