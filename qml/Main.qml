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

import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'com.ubuntu.ubports'
    automaticOrientation: true
    anchorToKeyboard: true

    width: units.gu(45)
    height: units.gu(75)

    PageHeader {
        id: mainHeader
        title: mainStack.currentPage.title
        leadingActionBar {
            actions: [
            Action {
                iconName: "webbrowser-app-symbolic"
                text: "ubports.com"
                onTriggered: Qt.openUrlExternally("https://ubports.com")
            },
            Action {
                iconName: "rssreader-app-symbolic"
                text: "Blog"
                onTriggered: Qt.openUrlExternally("https://ubports.com/r/appblog")
            },
            Action {
                iconName: "system-users-symbolic"
                //TRANSLATORS: Description of the menu item
                text: i18n.tr("Support Forum")
                onTriggered: Qt.openUrlExternally("https://ubports.com/r/appforums")
            },
            Action {
                iconName: "torch-on"
                //TRANSLATORS: Description of the menu item
                text: i18n.tr("Get involved")
                onTriggered: Qt.openUrlExternally("https://ubports.com/r/appgetinvolved")
            },
            Action {
                iconName: "dekko-app-symbolic"
                //TRANSLATORS: Description of the menu item
                text: i18n.tr("Newsletter")
                onTriggered: Qt.openUrlExternally("https://ubports.com/r/appsubscribe")
            },
            Action {
                iconName: "twitter-symbolic"
                text: "Twitter"
                onTriggered: Qt.openUrlExternally("https://twitter.com/ubports")
            },
            Action {
                iconName: "contacts-app-symbolic"
                //TRANSLATORS: Description of the menu item
                text: i18n.tr("Meet The Team")
                onTriggered: Qt.openUrlExternally("https://ubports.com/r/appteam")
            },
            Action {
                iconName: "phone-symbolic"
                //TRANSLATORS: Description of the menu item
                text: i18n.tr("Devices")
                onTriggered: Qt.openUrlExternally("https://ubports.com/r/appdev")
            }

            ]
            numberOfSlots: 0
        }
        trailingActionBar {
            actions: [
            Action {
                iconName: "info"
                //TRANSLATORS: Description of the menu item
                text: i18n.tr("About")
                onTriggered: mainStack.push(Qt.resolvedUrl("About.qml"))
            },
            Action {
                iconName: "home"
                //TRANSLATORS: Description of the menu item
                text: i18n.tr("Home")
                onTriggered: mainStack.push(Qt.resolvedUrl("Home.qml"))
            }
            ]
            numberOfSlots: 2
        }
    }

    PageStack {
        id: mainStack
        anchors {
            fill: undefined // unset the default to make the other anchors work
            left: parent.left
            right: parent.right
            top: mainHeader.bottom
            bottom: parent.bottom
        }
    }
    Component.onCompleted: mainStack.push(Qt.resolvedUrl("Home.qml"))
}
