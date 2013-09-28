import QtQuick 2.0

Rectangle
{
    property string text

    id: menuItem

    width: menuItemText.width + 20
    height: parent.height
    color: "#00000000"

    Text {
        id: menuItemText
        color: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 30
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        text: parent.text
    }

    MouseArea
    {
        id: clickArea
        width: parent.width
        height: parent.height
    }
}
