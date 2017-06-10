// Main.qml
//
// This file is part of the UBports Welcome App.
//
// Copyright (c) 2017 UBports https://ubports.com
//
// Maintained by Jan Jakob Sprinz (@NeoTheThird) <neo@neothethird.de>
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
    title: "Welcome to UBports"
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
                text: i18n.tr("Welcome to UBports - We change the future")
                fontSize: "large"
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Let's innovate and dream again")
                fontSize: "medium"
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("UBports builds the most private and innovative experience. It is limited in potential only by what you - the community member - can dream. Regain control of your device and personal data. You have choice and freedom with UBports.")
                onLinkActivated: Qt.openUrlExternally(link)
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Pay what's fair")
                fontSize: "medium"
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("UBports was created and exists because of many volunteers in the community near you and all over the world. Although we don't ask for a fixed fee we do ask that if you like what you see and want to see the project succeed that you consider a one-time or regular monthly donation. We sincerely appreciate it and we know that you'll feel great about your fair contribution and be excited to particpate. In return, we believe in providing fair sevice and opportunity with transparency to all members of the project.")
                onLinkActivated: Qt.openUrlExternally(link)
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Be more than a spectator - Become a game changer!")
                fontSize: "medium"
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("With ubports you can actually change the things you don't like. Ever felt frustrated by a feature or a limitation or a weird layout? Get it changed! By reporting bugs and sending feature requests UBports will become the smartest platform you've ever experienced.")
                onLinkActivated: Qt.openUrlExternally(link)
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Get looped in")
                fontSize: "medium"
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("We are in this together. As a starting point, stay on top of the latest developments, related news and a whole bunch of other experience-enhancing updates. Join our mailing list to get in the loop and stay in the loop.")
                onLinkActivated: Qt.openUrlExternally(link)
            }
        }
    }
}
