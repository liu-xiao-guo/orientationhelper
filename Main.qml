import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "orientationhelper.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
//    automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: i18n.tr("")

        Item {
            anchors.fill: parent

            OrientationHelper {
//                orientationAngle: 90

                Column {
                    spacing: units.gu(3)
                    Label {
                        text: "Automatically rotated"
                    }
                    Button {
                        text: "Automatically rotated"
                    }

                    Image {
                        width: units.gu(10)
                        height: units.gu(17)
                        source: "images/pic1.jpg"
                    }
                }
            }
        }
    }
}

