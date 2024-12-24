import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Switch"

    Column {
        spacing:20
        anchors.fill:parent
        Rectangle {
            id:rectangle
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.centerIn: parent
            width: 250; height:250; color:"red"; radius: 5;
                Behavior on color {
                    ColorAnimation {
                        duration:500
                        easing.type: Easing.InBack
                    }
                }
                Behavior on width {
                    NumberAnimation {
                        duration:500
                        easing.type: Easing.InOutQuint
                    }
                }
                Behavior on height {
                    NumberAnimation {
                        duration:500
                        easing.type: Easing.InBack
                    }
                }
        }
        Switch {
            text:"COLOR"
            id:switchColor
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            checked:false
            onCheckedChanged:  {
                if(checked===false) {
                    rectangle.color="red"
                } else {
                    rectangle.color="blue"
                }
            }
        }
        Switch {
            id:switchWidthHeight
            text:"BOYUT DEGISTIRME"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            checked:false
            onCheckedChanged:  {
                if(checked===false) {
                    rectangle.width=300
                    rectangle.height=300
                } else {
                    rectangle.width=250
                    rectangle.height=250
                }
            }
        }
    }

}
