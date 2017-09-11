// Main.qml
//
// This file is part of the UBports Welcome App.
//
// Copyright (c) 2017 UBports https://ubports.com
//
// Maintained by Jan Jakob Sprinz (@NeoTheThird) <jan@ubports.com>
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
    id: homePage
    title: i18n.tr("Welcome to %1!").arg("UBports")
    header: DefaultHeader {}

    ScrollView {
        id: flick
        anchors {
            fill: parent
            topMargin: homePage.header.height
        }

        Column {
            id: homeColumn
            width: flick.width
            spacing: units.gu(3)

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Image.AlignHCenter
                source: Qt.resolvedUrl("../assets/logo.png")
            }

            DefaultLabel {
                text: i18n.tr("Welcome to %1!").arg("UBports")
                textSize: Label.XLarge
            }

            DefaultLabel {
                text: i18n.tr("We can change the future! Let's innovate and dream again.")
                textSize: Label.Large
            }

            DefaultLabel {
                text: i18n.tr("UBports builds the most private and innovative experience. It is limited in potential only by what you - the community member - can dream. Regain control of your device and personal data. You have choice and freedom with UBports.")
            }

            DefaultLabel {
                text: i18n.tr("Pay what's fair")
                textSize: Label.Large
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct
                text: i18n.tr("UBports was created and exists because of many volunteers in the community near you and all over the world. Although we don't ask for a fixed fee we do depend on financial support from the community. So if you like what you see and want to see the project succeed, please consider a <a href='https://paypal.me/ubports'>one-time</a> or <a href='https://patreon.com/ubports'>regular monthly donation</a>. We sincerely appreciate it and we know that you'll feel great about your fair contribution and be excited to particpate. In return, we believe in providing fair sevice and opportunity with transparency to all members of the project.")
            }

            DefaultLabel {
                text: i18n.tr("Be more than a spectator - Become a game changer!")
                textSize: Label.Large
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct
                text: i18n.tr("With ubports you can actually change the things you don't like. Ever felt frustrated by a feature or a limitation or a weird layout? Get it changed! By <a href='https://github.com/ubports/ubports-touch'>reporting bugs and sending feature requests</a> UBports will become the smartest platform you've ever experienced.")
            }

            DefaultLabel {
                text: i18n.tr("Get looped in")
                textSize: Label.Large
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct
                text: i18n.tr("We are in this together. As a starting point, stay on top of the latest developments, related news and a whole bunch of other experience-enhancing updates. <a href='https://ubports.com/r/appsubscribe'>Join our mailing list</a> to get in the loop and stay in the loop.")
            }

            DefaultLabel {
                //TRANSLATORS: Please make sure the URLs are correct
                text: i18n.tr("UBports is made possible by our <a href='https://ubports.com/sponsors'>our awesome sponsors, donors and patrons</a>!")
            }
        }
    }
}
