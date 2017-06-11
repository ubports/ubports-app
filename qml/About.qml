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
    property string version: "1.3"
    Flickable {
        id: flick
        anchors {
            fill: parent
            margins: units.gu(3)
            topMargin: 0
            bottomMargin: 0
        }
        clip: true
        contentWidth: aboutColumn.width
        contentHeight: aboutColumn.height

        Column {
            id: aboutColumn
            width: parent.parent.width
            spacing: units.gu(3)

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("UBports App")
                fontSize: "x-large"
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
                text: i18n.tr("UBports is an international community of developers and users who wish to keep Ubuntu Touch alive. The project was founded by Marius Gripsgard in 2015 as a place where developers can talk and learn from each other and help bring Ubuntu to more devices as a team. After Canonical announced the end of their support for Ubuntu Touch, the operating system was picked up by the community. The resonance has been fantastic and our community is growing rapidly.")
                onLinkActivated: Qt.openUrlExternally(link)
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("It's our goal to keep Ubuntu Touch alive on all existing devices. While keeping all its good and beautiful parts, we want to reshape Ubuntu Touch to make it the operating system we want to use on a daily basis. Ubuntu is Linux for human beings, and Ubuntu Touch brings this spirit to mobile devices. We want to turn Ubuntu Touch into a true Linux distribution for mobile devices, while keeping its simple and elegant design.")
                onLinkActivated: Qt.openUrlExternally(link)
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
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                style: Font.Bold
                text: i18n.tr("Copyright (c) 2017 UBports <ubports.com>")
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                style: Font.Bold
                text: i18n.tr("Maintained by Jan Sprinz <neo@neothethird.de>")
            }
        }
    }
}
