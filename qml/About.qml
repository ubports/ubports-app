// About.qml
//
// This file is part of the UBports Welcome App.
//
// Copyright (c) 2017 UBports https://ubports.com
//
// Maintained by Jan Jakob Sprinz (@NeoTheThird) <jan@ubports.com>
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

import QtQuick 2.4
import Ubuntu.Components 1.3
import "modules"

Page {
    id: aboutPage
    title: i18n.tr("About the App")
    header: DefaultHeader {}

    ScrollView {
        id: scroll
        anchors {
            fill: parent
            topMargin: aboutPage.header.height
        }

        Column {
            id: aboutColumn
            width: scroll.width
            spacing: units.gu(3)

            DefaultLabel {
                text: i18n.tr("%1 App").arg("UBports")
                textSize: Label.XLarge
            }

            UbuntuShape {
                width: units.gu(12); height: units.gu(12)
                anchors.horizontalCenter: parent.horizontalCenter
                radius: Label.Medium
                image: Image {
                    source: Qt.resolvedUrl("../assets/logo.png")
                }
            }

            DefaultLabel {
                text: i18n.tr("Version: ") + ubports_app.version
            }

            DefaultLabel {
                text: i18n.tr("UBports is an international community of developers and users who wish to keep Ubuntu Touch alive. The project was founded by Marius Gripsgard in 2015 as a place where developers can talk and learn from each other and help bring Ubuntu to more devices as a team. After Canonical announced the end of their support for Ubuntu Touch, the operating system was picked up by the community. The resonance has been fantastic and our community is growing rapidly.")
            }

            DefaultLabel {
                text: i18n.tr("It's our goal to keep Ubuntu Touch alive on all existing devices. While keeping all its good and beautiful parts, we want to reshape Ubuntu Touch to make it the operating system we want to use on a daily basis. Ubuntu is Linux for human beings, and Ubuntu Touch brings this spirit to mobile devices. We want to turn Ubuntu Touch into a true Linux distribution for mobile devices, while keeping its simple and elegant design.")
            }

            DefaultLabel {
                //TRANSLATORS: A localized URL can be used for the license
                text: i18n.tr("This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the <a href='https://www.gnu.org/licenses/gpl-3.0.en.html'>GNU General Public License</a> for more details.")
            }

            DefaultLabel {
                text: "<a href='https://github.com/ubports/ubports-app/tree/" + ubports_app.version + "'>" + i18n.tr("SOURCE") + "</a> | <a href='https://github.com/ubports/ubports-app/issues'>" + i18n.tr("ISSUES") + "</a> | <a href='https://liberapay.com/ubports'>" + i18n.tr("DONATE") + "</a>"
            }

            DefaultLabel {
                text: "<b>" + i18n.tr("Copyright (c) 2017 UBports <ubports.com>") + "</b>"
            }

            DefaultLabel {
                text: "<b>" + i18n.tr("Maintained by") + " Jan Sprinz <jan@ubports.com> </b>"
            }
        }
    }
}
