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
                text: i18n.tr("Welcome to UBports")
                fontSize: "large"
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
                text: i18n.tr("Ok, we can't compete with Android. But the good thing is we don't have to! Since we are a non-profit organization funded entirely from donations, we don't have to steal anyone's market share. We do this for the community - as we are the community!")
                onLinkActivated: Qt.openUrlExternally(link)
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Want to learn more?")
                fontSize: "large"
            }

            Label {
                width: parent.width
                linkColor: UbuntuColors.orange
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: i18n.tr("Are you interested in Ubuntu Touch? Does it look like something you might want to use or work on? Then you might be interested in <a href='https://ubports.com/get-involved'>learning about the various ways you can contribute to the project</a>. Read the <a href='https://ubports.com/faq'>FAQs</a> or <a href='https://forums.ubports.com'>hit the forums</a> to learn more. If you want to stay up to date, you can also follow us on <a href='https://twitter.com/ubports'>Twitter</a>, or just <a href='https://bit.ly/ubports'>subscribe to our mailing list</a> to recieve all our latest <a href://blog.ubports.com>blog posts</a>.")
                onLinkActivated: Qt.openUrlExternally(link)
            }
        }
    }
}
