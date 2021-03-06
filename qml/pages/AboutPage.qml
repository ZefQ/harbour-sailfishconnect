/*
 * Copyright 2018 Richard Liebscher <richard.liebscher@gmail.com>.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: content.height

        Column {
            id: content

            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("About")
            }

            Label {
                text: "<b>Sailfish-Connect</b>" // TODO: QT5.9: Qt.application.displayName
                color: Theme.highlightColor
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                text: Qt.application.version
                color: Theme.highlightColor
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                wrapMode: Text.WordWrap
                text: qsTr("A KDE-Connect client for SailfishOS")
                color: Theme.highlightColor
                anchors.horizontalCenter: parent.horizontalCenter
            }

            SectionHeader {
                text: qsTr("Links")
            }

            Column {
                x: Theme.horizontalPageMargin
                width: page.width - 2 * Theme.horizontalPageMargin

                Label {
                    text: qsTr("<a href=\"https://github.com/R1tschY/harbour-sailfishconnect/issues\">Bug reports on Github</a>")
                    color: Theme.highlightColor
                    linkColor: Theme.primaryColor
                    onLinkActivated: Qt.openUrlExternally(link)
                }

                Label {
                    text: qsTr("<a href=\"https://github.com/R1tschY/harbour-sailfishconnect\">Source code on Github</a>")
                    color: Theme.highlightColor
                    linkColor: Theme.primaryColor
                    onLinkActivated: Qt.openUrlExternally(link)
                }
            }

            SectionHeader {
                text: qsTr("Licence")
            }
            Label {
                x: Theme.horizontalPageMargin
                width: page.width - 2 * Theme.horizontalPageMargin
                wrapMode: Text.WordWrap
                text: qsTr("This program is free software: you can redistribute it and/or modify" +
                    "it under the terms of the GNU General Public License as published by " +
                    "the Free Software Foundation, either version 3 of the License, or " +
                    "(at your option) any later version. <br/><br/>" +

                    "This program is distributed in the hope that it will be useful, " +
                    "but WITHOUT ANY WARRANTY; without even the implied warranty of " +
                    "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the " +
                    "GNU General Public License for more details.<br/><br/>" +

                    "You should have received a copy of the GNU General Public License " +
                    "along with this program. If not, see <a href=\"http://www.gnu.org/licenses/\">http://www.gnu.org/licenses/</a>.")
                textFormat: Text.StyledText
                color: Theme.highlightColor
                font.pixelSize: Theme.fontSizeSmall
                linkColor: Theme.primaryColor
                onLinkActivated: Qt.openUrlExternally(link)
            }
        }

        VerticalScrollDecorator {}
    }
}
