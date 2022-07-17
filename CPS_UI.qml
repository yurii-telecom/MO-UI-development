/****************************************************************************
**
** Copyright (C) 2014 Alexander Rössler
** License: LGPL version 2.1
**
** This file is part of QtQuickVcp.
**
** All rights reserved. This program and the accompanying materials
** are made available under the terms of the GNU Lesser General Public License
** (LGPL) version 2.1 which accompanies this distribution, and is available at
** http://www.gnu.org/licenses/lgpl-2.1.html
**
** This library is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PAR

GroupBox {
    id: groupBox
    width: 421
    height: 290
    visible: true
    title: qsTr("Group Box")

    Label {
        id: label1
        x: 44
        y: 30
        text: "System Voltage: " + parseInt(pin1.value/10) + " Volts"
    }

    Rectangle{
        id: rectangle1
        x: 44
        y: 30
        width: 130
        height: 60

        HalPin {
            id: pin1
            name: "System_Voltage"
            type: HalPin.S32
            direction: HalPin.In
        }
    }

    HalRoundGauge {
        id: roundGauge2
        name: "tilt"
        x: 359
        y: 53
        width: 100
        height: 100
        maximumValue: 180
        minimumValue: -180
        clip: true
    }

    HalRoundGauge {
        id: roundGauge1
        name: "roll"
        x: 235
        y: 53
        width: 100
        height: 100
        maximumValue: 180
        minimumValue: -180
        clip: true
    }

    HalRoundGauge {
        id: roundGauge
        name: "pan"
        x: 118
        y: 53
        width: main.width/6
        height: main.height/6
        value: 0.6
        needleColor: "#ffffff"
        needleVisible: true
        stepSize: 0.5
        startAngle: -0.1
        maximumValue: 180
        minimumValue: -180
        clip: true
    }

TICULAR PURPOSE. See the GNU
** Lesser General Public License for more details.
**
** Contributors:
** Alexander Rössler @ The Cool Tool GmbH <mail DOT aroessler AT gmail DOT com>
**
****************************************************************************/
import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0
import Machinekit.Application 1.0
import Machinekit.Application.Controls 1.0
import Machinekit.Service 1.0
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0

HalApplicationWindow {
    
    id: main
    name: "TestHal"
    title: qsTr("CPS_UI")

    GroupBox {
        id: groupBox
        width: 421
        height: 290
        visible: true
        title: qsTr("Group Box")

        Label {
            id: label1
            x: 44
            y: 30
            text: "System Voltage: " + parseInt(pin1.value/10) + " Volts"
        }

        Rectangle{
            id: rectangle1
            x: 44
            y: 30
            width: 130
            height: 60

            HalPin {
                id: pin1
                name: "System_Voltage"
                type: HalPin.S32
                direction: HalPin.In
            }
        }

        HalRoundGauge {
            id: roundGauge2
            name: "tilt"
            x: 359
            y: 53
            width: 100
            height: 100
            maximumValue: 180
            minimumValue: -180
            clip: true
        }

        HalRoundGauge {
            id: roundGauge1
            name: "roll"
            x: 235
            y: 53
            width: 100
            height: 100
            maximumValue: 180
            minimumValue: -180
            clip: true
        }

        HalRoundGauge {
            id: roundGauge
            name: "pan"
            x: 118
            y: 53
            width: main.width/6
            height: main.height/6
            value: 0.6
            needleColor: "#ffffff"
            needleVisible: true
            stepSize: 0.5
            startAngle: -0.1
            maximumValue: 180
            minimumValue: -180
            clip: true
        }
    }
}
