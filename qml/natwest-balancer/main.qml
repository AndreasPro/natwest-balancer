import QtQuick 2.0

Rectangle {
    id: base
    width: 1280
    height: 720
    color: "#ffffff"

    Rectangle {
        id: header
        width: parent.width
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 128
        color: "#0e004d"

        Text {
            id: title
            width: 539
            height: parent.height
            color: "#ffffff"
            text: qsTr("NatWest Balancer")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -13
            anchors.right: parent.right
            anchors.rightMargin: 10
            style: Text.Raised
            font.pointSize: 50
            verticalAlignment: Text.AlignBottom
            horizontalAlignment: Text.AlignRight
        }
    }

    Flickable {
        id: main
        anchors.top: header.bottom
        anchors.right: parent.right
        anchors.bottom: footer.top
        anchors.left: parent.left
        anchors.topMargin: 0
        anchors.bottomMargin: 0
    }

    Rectangle {
        id: footer
        width: parent.width
        height: 64
        color: header.color
        anchors.bottom: parent.bottom

        Row {
            id: menu
            x: 0
            y: 0
            width: parent.width
            height: parent.height

            MenuItem
            {

                text: qsTr("Home")
            }

            MenuItem {
                text: qsTr("Reports")
            }

            MenuItem
            {
                text: qsTr("Import CSV")
            }

            MenuItem {
                text: qsTr("History")
            }
        }
    }
}
