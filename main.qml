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
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Right:
                  grille.init(5);
                  console.log(grille);
                  break;
                case Qt.Key_Left:
                  stateGroup.state='State0_0';
                  break;
               }
            }
    }
}
