import IgniteUI as IUI
import QtQuick 2.9
import QtQuick.Controls 2.5
IUI.CFWindow {
    visible: true
    title:"Theme Studio"
    height:720
    width:1280
    Image{
        source:"file:///home/yegender/HDD/MyFiles/Downloads/th_2.jpg"
        y:0
        x:0
        height:1080
        width:1920
    }
    Rectangle{
        id:leftSide
        color:"black"
        width:parent.width/2
        height:parent.height
        ScrollView{
            width:parent.width
            height:parent.height
            IUI.CFLabel{
                text:"Suggest a title"
                fontSize: 34
                x:20
                y:20
                textColor:"white"
            }
            IUI.CFButton{
                x:20
                y:50
                width:128
                height:128
            }
        }
    }
}
