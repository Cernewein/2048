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
            focus:true
            Keys.onPressed: {
                switch (event.key) {
                  case Qt.Key_Up:
                    vueObjetCpt.toucheHaut();
                    break;
                  case Qt.Key_Down:
                    vueObjetCpt.toucheBas();
                    break;
                  case Qt.Key_Right:
                    vueObjetCpt.toucheDroite();
                    break;
                  case Qt.Key_Left:
                    vueObjetCpt.toucheGauche();
                    break;
                }
            }
            newGame.onClicked: vueObjetCpt.init();
    }
}
