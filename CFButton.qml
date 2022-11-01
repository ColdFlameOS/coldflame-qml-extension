import QtQuick.Controls 2.5
import QtQuick
Rectangle {
    color:"transparent"
    border.width: 1.5
    border.color: "white"
    width:400
    height:400
    radius:20
    IconImage{
        id:icon
        anchors.fill: parent
    }
    Rectangle{
        id:background
        anchors.fill: parent
        color:"#000"
    }

    CFLabel{
        anchors.centerIn: parent
        id:label
        text:"Roses are red, sky is blue"
        textColor:"red"
        fontSize: 24
    }
    HoverHandler{
        acceptedDevices: PointerDevice.Mouse
        onHoveredChanged: {
            if(hover === true){
                background.color = "#222"
            } else {
                background.color = "#000"
            }
        }
    }

}
