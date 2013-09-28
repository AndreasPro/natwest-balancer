import QtQuick 2.0

Rectangle
{
    property string text
    property View view

    id: menuItem

    width: menuItemText.width + 20
    height: parent.height
    color: "#00000000"

    state: "normal"

    states: [

        State {
            name: "hover"
            when: clickArea.containsMouse
            PropertyChanges {
                target: menuItemText
                color: "#ff4352"

            }
        }

    ]


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
        hoverEnabled: true

        onClicked: viewManager.showView(view)

    }
}
