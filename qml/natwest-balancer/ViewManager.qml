import QtQuick 2.0

Rectangle {
    id: viewManager

    default property alias content: viewsContainer.children
    property Item currentView

    clip: true

    Rectangle
    {
        id: viewsContainer
        anchors.fill: parent
    }

    PropertyAnimation {
        id: currentViewAnimation
        duration : 500
        property: "x"
        easing.type: Easing.InQuad
    }

    PropertyAnimation {
        id: nextViewAnimation
        duration : 500
        property: "x"
        easing.type: Easing.InQuad
    }

    function showView(nextView)
    {

        if(nextView !== currentView)
        {
            if(currentViewAnimation.running)
            {
                currentViewAnimation.complete();
            }

            if(nextViewAnimation.running)
            {
                nextViewAnimation.complete();
            }

            nextView.x = viewManager.width;

            currentViewAnimation.target = currentView;
            currentViewAnimation.to = -viewManager.width;
            currentViewAnimation.running = true;

            nextViewAnimation.target = nextView;
            nextViewAnimation.to = 0;
            nextViewAnimation.running = true;
            currentView = nextView;

        }
    }
}
