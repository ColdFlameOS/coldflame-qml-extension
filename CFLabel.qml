import QtQuick.Controls 2.5
import QtQuick 2.5
Item{
    id:m_root
    property alias backgroundColor : m_background.color
    property alias content : m_label.text
    property alias text : m_label.text
    property alias textColor : m_label.color
    property alias contentColor : m_label.color
    property alias fontFamily: m_label.font.family
    property alias fontSize : m_label.font.pixelSize
    property alias bold : m_label.font.bold
    property alias underline : m_label.font.underline
    property alias italic : m_label.font.italic
    property alias strikeout : m_label.font.strikeout
    property alias border : m_background.border
    property alias borderRadius : m_background.radius
    property int margin : 0
    property int marginLeft : 0
    property int marginRight: 0
    property int marginTop : 0
    property int marginBottom : 0
    property int padding : 10
    property int paddingLeft : 0
    property int paddingRight: 0
    property int paddingTop : 0
    property int paddingBottom : 0
    Component.onCompleted : {

    }
    Rectangle {
        id: m_background
        color : "transparent"
        anchors.fill: parent
        anchors.margins: m_root.margin
        anchors.leftMargin: m_root.marginLeft
        anchors.rightMargin: m_root.marginRight
        anchors.topMargin: m_root.marginTop
        anchors.bottomMargin: m_root.marginBottom
    }

    Label{
        id:m_label
    }
}
