import QtQuick.Controls 2.5
import QtQuick 2.5
Rectangle {
    color:"transparent"
    IconImage{
        id:icon
        anchors.fill: parent
    }
    CFLabel{
        id:label
        text:"Roses are red, sky is blue"
        textColor:"red"
        fontSize: 24
    }
}
