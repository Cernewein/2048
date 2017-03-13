import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: page
    width: 480
    height: 640

    property alias text2: text2
    property alias newgame: newgame
    property alias text3: text3
    property alias score: score
    property alias text4: text4
    property alias best: best
    property alias text1: text1

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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
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
            color: "#c3bcbc"
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
                text: qsTr(" ")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 37
            }
        }

        Rectangle {
            id: tuile1
            x: 10
            y: 10
            width: 100
            height: 100
            color: "#f4e07d"
            radius: 17

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
            font.pixelSize: 12
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
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: newgame
        x: 383
        y: 106
        width: 89
        height: 33
        color: "#505050"

        Text {
            id: text2
            color: "#ffffff"
            text: qsTr("New Game")
            font.family: "Tahoma"
            fontSizeMode: Text.VerticalFit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            font.pixelSize: 12
        }
    }
}
