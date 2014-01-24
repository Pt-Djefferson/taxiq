import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: applicationWindow1
    title: qsTr("Hello World")
    width: 800
    height: 600
    color: "#000000"
    minimumWidth: 800
    minimumHeight: 600

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            width: 599
            height: 599
            //Layout.maximumWidth: 400
            Layout.minimumWidth: 599
            color: "gray"
            Layout.fillWidth: true
        }
        Rectangle {
            id: centerItem
            x: 600
            width: 200
            height: 599
            Layout.minimumWidth: 50
            color: "#a8a8a8"
        }
    }
/*
    SplitView {
        id: splitView1
        anchors.fill: parent
        resizing: false
        clip: true

        Rectangle {
            id: rectangle2
            x: 0
            y: 0
            width: 624
            height: 599
            color: "#f47676"
            anchors.left: parent.left
            anchors.leftMargin: -1
        }

        Rectangle {
            id: rectangle1
            x: 625
            y: 0
            width: 624
            height: 599
            color: "#97fc7e"
        }
    }
*/
}
