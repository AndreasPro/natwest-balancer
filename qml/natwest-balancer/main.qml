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

    ViewManager {
        id: viewManager

        anchors.top: header.bottom
        anchors.right: parent.right
        anchors.bottom: footer.top
        anchors.left: parent.left
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        currentView: home

        HomeView
        {
            id: home
            x: 0
        }

        ReportView
        {
            id: report
        }

        ImportView
        {
            id: importCSV
        }

        HistoryView
        {
            id: history
        }

    }

    Rectangle {
        id: footer
        width: parent.width
        height: 64
        color: header.color
        anchors.bottom: parent.bottom

        Menu
        {
            viewManager: viewManager

            MenuItem
            {
                view: home
                text: qsTr("Home")

            }

            MenuItem {

                view: report
                text: qsTr("Reports")
            }

            MenuItem
            {
                view: importCSV
                text: qsTr("Import CSV")
            }

            MenuItem {

                view: history
                text: qsTr("History")
            }
        }
    }
}
