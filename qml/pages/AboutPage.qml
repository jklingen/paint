/*
    Generic about page (C) 2014 Kimmo Lindholm
*/

import QtQuick 2.0
import Sailfish.Silica 1.0


Page
{
    property string name
    property string year
    property string version
    property string imagelocation

    id: page

    SilicaFlickable
    {
        anchors.fill: parent

        contentHeight: column.height

        Column
        {
            id: column

            width: page.width
            spacing: Theme.paddingSmall
            PageHeader
            {
                title: qsTr("About ") + name
            }
            Label
            {
                x: Theme.paddingLarge
                text: name
                color: Theme.primaryColor
                font.pixelSize: Theme.fontSizeMedium
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Rectangle
            {
                visible: imagelocation.length > 0
                anchors.horizontalCenter: parent.horizontalCenter
                height: 120
                width: 120
                color: "transparent"

                Image
                {
                    visible: imagelocation.length > 0
                    source: imagelocation
                    anchors.centerIn: parent
                }
            }

            Label
            {
                text: "PROTO"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 100
            }

            Label
            {
                x: Theme.paddingLarge
                text: "(C) " + year + " kimmoli"
                color: Theme.primaryColor
                font.pixelSize: Theme.fontSizeMedium
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Label
            {
                x: Theme.paddingLarge
                text: qsTr("Version: ") + version
                color: Theme.primaryColor
                font.pixelSize: Theme.fontSizeMedium
                anchors.horizontalCenter: parent.horizontalCenter
            }
            SectionHeader
            {
                text: qsTr("Help")
            }

            Repeater
            {
                model: buttonimage
                Row
                {
                    spacing: 50
                    x: 90
                    Image
                    {
                        id: bim
                        source: buttonimage[index]
                    }
                    Label
                    {
                        text: buttonhelptext[index]
                        anchors.verticalCenter: bim.verticalCenter
                    }

                }
            }
        }
    }
}



