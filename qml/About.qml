// Main.qml
//
// This file is part of the UBports Welcome App.
//
// Copyright (c) 2017 UBports https://ubports.com
//
// Maintained by Jan Jakob Sprinz (@NeoTheThird) <neo@neothethird.de>
//
// This file was originates from 8192 (c) 2017 Jan Sprinz:
// https://github.com/NeoTheThird/8192
//
// GNU GENERAL PUBLIC LICENSE
//    Version 3, 29 June 2007
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import QtQuick 2.0
import Ubuntu.Components 1.1

Page {
    title: "About the App"
    property string version: "0.1"
    Flickable {
        id: flick
        anchors {
            fill: parent
            margins: (parent.width / 6)
            topMargin: (parent.height / 4)
        }
        contentWidth: aboutColumn.width
        contentHeight: aboutColumn.height

        Column {
            id: aboutColumn
            width: parent.parent.width
            spacing: units.gu(3)

            Label {
                anchors.horizontalCenter: parent.horizontalCenter

                text: i18n.tr("UBports App")
                fontSize: "large"
            }

            UbuntuShape {
                width: units.gu(12); height: units.gu(12)
                anchors.horizontalCenter: parent.horizontalCenter
                radius: "medium"
                image: Image {
                    source: Qt.resolvedUrl("../assets/logo.png")
                }
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("Version: ") + version
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the <a href='https://www.gnu.org/licenses/gpl-3.0.en.html'>GNU General Public License</a> for more details.")
                onLinkActivated: Qt.openUrlExternally(link)
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("<a href='https://github.com/ubports/ubports-app'>SOURCE</a> | <a href='https://github.com/ubports/ubports-app/issues'>ISSUES</a> | <a href='https://patreon.com/ubports'>DONATE</a>")
                onLinkActivated: Qt.openUrlExternally(link)
            }

            Label {
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                text: i18n.tr("<b>Copyright (c) 2017 UBports &lt;ubports.com&gt;<br>Maintained by Jan Sprinz &lt;neo@neothethird.de&gt;</b><br>")
            }
        }
    }
}
