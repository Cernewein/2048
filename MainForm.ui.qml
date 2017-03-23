import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2

Item {
    id: page
    width: 480
    height: 640
    property alias newGame: newGame
    property alias scoretxt: scoretxt
    property alias besttxt: besttxt
    property alias text3: text3
    property alias score: score
    property alias text4: text4
    property alias best: best
    property alias text1: text1
    property alias text1_3: text1_3
    property alias text0_3: text0_3
    property alias text0_2: text0_2
    property alias text1_2: text1_2
    property alias text3_3: text3_3
    property alias text2_3: text2_3
    property alias text2_2: text2_2
    property alias text3_2: text3_2
    property alias text3_1: text3_1
    property alias text2_1: text2_1
    property alias text1_1: text1_1
    property alias text0_1: text0_1
    property alias text0_0: text0_0
    property alias text1_0: text1_0
    property alias text2_0: text2_0
    property alias text3_0: text3_0
    property alias rect1_2: rect1_2
    property alias rect3_3: rect3_3
    property alias rect2_3: rect2_3
    property alias rect2_2: rect2_2
    property alias rect3_2: rect3_2
    property alias rect3_1: rect3_1
    property alias rect2_1: rect2_1
    property alias rect1_1: rect1_1
    property alias rect0_1: rect0_1
    property alias rect0_0: rect0_0
    property alias rect1_0: rect1_0
    property alias rect2_0: rect2_0
    property alias rect3_0: rect3_0
    property alias fonddejeu: fonddejeu
    property alias fond: fond
    property alias rect0_2: rect0_2
    property alias rect1_3: rect1_3
    property alias rect0_3: rect0_3

//    MessageDialog {
//        id: messageDialog
//        title: "Perdu"
//        text: "Désolé vous venez de perdre.."
//        visible: vueObjetCpt.perduQML;
//    }

    Rectangle {
        id: fond
        color: "#efefd9"
        z: -1
        anchors.fill: parent
    }

    Rectangle {
        id: fonddejeu
        x: 185
        y: 251
        width: 450
        height: 450
        color: "#808080"
        radius: 15
        z: -1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        /* Les 16 rectangles suivants correspondent aux petits rectangles gris du jeu,
                                            ils sont nommés rectx_y ou x est la ligne (de 0 à 3) et y la colonne (de 0 à 3)
                                                                                                                                                l'origine est prise au niveau du coin supérieur gauche
                                                                                                                                                                                                                                                                                                                                                                         */
        Rectangle {
            id: rect3_0
            x: 10
            y: 320
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[12]
            radius: 15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            smooth: true

            Text {
                id: text3_0
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[12]
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect2_0
            x: 10
            y: 210
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[8]
            radius: 15
            smooth: true
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 120

            Text {
                id: text2_0
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[8]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect1_0
            x: 10
            y: 98
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[4]
            radius: 15
            smooth: true
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 230

            Text {
                id: text1_0
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[4]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect0_0
            x: -10
            y: 120
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[0]
            radius: 15
            smooth: true
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 340

            Text {
                id: text0_0
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[0]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect0_1
            x: -7
            y: 122
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[1]
            radius: 15
            smooth: true
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 340

            Text {
                id: text0_1
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[1]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect1_1
            x: -9
            y: 120
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[5]
            radius: 15
            smooth: true
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 230

            Text {
                id: text1_1
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[5]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect2_1
            x: -3
            y: 230
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[9]
            radius: 15
            smooth: true
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 120

            Text {
                id: text2_1
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[9]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect3_1
            x: -6
            y: 340
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[13]
            radius: 15
            smooth: true
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 10

            Text {
                id: text3_1
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[13]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect3_2
            x: -2
            y: 340
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[14]
            radius: 15
            smooth: true
            anchors.leftMargin: 230
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 10

            Text {
                id: text3_2
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[14]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect2_2
            x: -11
            y: 230
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[10]
            radius: 15
            smooth: true
            anchors.leftMargin: 230
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 120

            Text {
                id: text2_2
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[10]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect2_3
            x: -4
            y: 230
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[11]
            radius: 15
            smooth: true
            anchors.leftMargin: 340
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 120

            Text {
                id: text2_3
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[11]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect3_3
            x: -3
            y: 340
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[15]
            radius: 15
            smooth: true
            anchors.leftMargin: 340
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 10

            Text {
                id: text3_3
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[15]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect1_2
            x: 0
            y: 120
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[6]
            radius: 15
            smooth: true
            anchors.leftMargin: 230
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 230

            Text {
                id: text1_2
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[6]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect0_2
            x: 8
            y: 10
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[2]
            radius: 15
            smooth: true
            anchors.leftMargin: 230
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 340

            Text {
                id: text0_2
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[2]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect1_3
            x: 11
            y: 120
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[7]
            radius: 15
            smooth: true
            anchors.leftMargin: 340
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 230

            Text {
                id: text1_3
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[7]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: rect0_3
            x: 18
            y: 10
            width: 100
            height: 100
            color: vueObjetCpt.coulQML[3]
            radius: 15
            smooth: true
            anchors.leftMargin: 340
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 340

            Text {
                id: text0_3
                x: 39
                y: 43
                text: vueObjetCpt.cptQML[3]
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }
    }

    Text {
        id: text1

        x: 15
        y: 31
        width: 120

        height: 57
        color: "#808080"
        text: qsTr("2048")
        styleColor: "#00000000"
        elide: Text.ElideMiddle
        font.bold: true
        font.family: "Tahoma"
        wrapMode: Text.NoWrap
        fontSizeMode: Text.Fit
        font.pixelSize: 47
    }

    Rectangle {
        id: best
        x: 383
        y: 31
        width: 89
        height: 57
        color: "#c3bcbc"
        radius: 10

        Text {
            id: text4
            width: 89
            height: 27
            text: qsTr("BEST")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            font.pixelSize: 16
        }

        Text {
            id: besttxt
            x: 33
            y: 35
            text: vueObjetCpt.bestQML[1]
            font.pixelSize: 15
        }
    }

    Rectangle {
        id: score
        x: 288
        y: 31
        width: 89
        height: 57
        color: "#c3bcbc"
        radius: 10

        Text {
            id: text3
            width: 89
            height: 27
            text: qsTr("SCORE")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Tahoma"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            font.pixelSize: 17
        }

        Text {
            id: scoretxt
            x: 28
            y: 33
            text: vueObjetCpt.bestQML[0]
            font.pixelSize: 16
        }
    }

    Button {
        id: newGame
        x: 390
        y: 116
        text: qsTr("New Game")
        activeFocusOnPress: false
        enabled: true
        checkable: false
    }
}
