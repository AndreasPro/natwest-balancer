import QtQuick 2.0

Rectangle {

    property string title

    width: parent.width
    height: parent.Height
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    x: parent.width

    Text
    {
        id: header
        text: title
        color: "#ffffff"
        width: parent.width
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 40
        anchors.topMargin: -40
    }

}
