import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: item1
    width: 480
    height: 640

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

        Rectangle {
            id: rect1
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
        }

        Rectangle {
            id: rect2
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
        }

        Rectangle {
            id: rect3
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
        }

        Rectangle {
            id: rect4
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
        }

        Rectangle {
            id: rect5
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
        }

        Rectangle {
            id: rect6
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
        }

        Rectangle {
            id: rect7
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
        }

        Rectangle {
            id: rect8
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
        }

        Rectangle {
            id: rect9
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
        }

        Rectangle {
            id: rect10
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
        }

        Rectangle {
            id: rect11
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
        }

        Rectangle {
            id: rect12
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
        }

        Rectangle {
            id: rect13
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
        }

        Rectangle {
            id: rect14
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
        }

        Rectangle {
            id: rect15
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
        }

        Rectangle {
            id: rect16
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
        }
    }

    Text {
        id: text1
        x: 82
        y: 31
        width: 119
        height: 57
        color: "#808080"
        text: qsTr("2048")
        styleColor: "#00000000"
        elide: Text.ElideMiddle
        font.bold: true
        font.family: "Tahoma"
        wrapMode: Text.NoWrap
        fontSizeMode: Text.Fit
        font.pixelSize: 29
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
