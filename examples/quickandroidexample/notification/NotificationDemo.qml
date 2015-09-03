import QtQuick 2.2
import QtQuick.Window 2.1
import QuickAndroid 0.1
import QuickAndroid.style 0.1
import "../theme"

Activity {

    actionBar: AppActionBar {
        id : actionBar
        title: "Notification"
        z: 10
        upEnabled: true
        onActionButtonClicked: back();
    }

    Text {
        id: label
        text : "Press to send notification"
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color : Style.theme.black87
        font.pixelSize: Style.theme.largeText.textSize * A.dp
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            SystemDispatcher.dispatch("Notifier.notify",{
                title: "Quick Android Example",
                message: "Hello!"
            });
        }
    }

}