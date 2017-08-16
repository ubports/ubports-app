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
import QtQuick.Window 2.2

Window {
    id: ubports_app
    title: "Welcome to UBports"
    width: units.gu(150)
    height: units.gu(100)
    minimumWidth: units.gu(45)
    minimumHeight: units.gu(45)
    maximumWidth: Screen.width
    maximumHeight: Screen.height

    property string version: "1.6"

    Component.onCompleted: {
        console.log("UBports-App started\n")
        console.log("Version: " + version);
    }

    MainView {
        id: root
        objectName: 'mainView'
        applicationName: 'com.ubuntu.ubports'
        automaticOrientation: true
        anchorToKeyboard: true
        anchors.fill: parent

        PageStack {
            id: mainStack
        }

        Component.onCompleted: {
            mainStack.clear()
            mainStack.push(Qt.resolvedUrl("Home.qml"))
        }
    }
}
