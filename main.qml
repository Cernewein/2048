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
        Keys.onPressed: {
          switch (event.key) {
            case Qt.Key_Right:
              stateGroup.state='State0_3'
              break;
            case Qt.Key_Left:
              stateGroup.state='State0_0'
              break;
          }
        }
    }

    StateGroup{
        id: stateGroup
        states:[
             State{
                name: 'State0_0'
                PropertyChanges {
                    target: page.fonddejeu.tuile1
                    x: page.fonddejeu.rect0_0.x
                    y: page.fonddejeu.rect0_0.y
                }
            },
            State{
               name: 'State0_3'
               PropertyChanges {
                   target: page.fonddejeu.tuile1
                   x: page.fonddejeu.rect0_3.x
                   y: page.fonddejeu.rect0_3.y
               }
           }
    ]
        transitions:
            Transition {
                 NumberAnimation {
                     properties: "x,y";
                     easing.type: Easing.OutQuad
                     duration: 200
                 }
            }

    }
}
