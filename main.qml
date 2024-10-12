import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import Qt.labs.platform as Platform

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    background: Rectangle {
        color: "darkGray"
    }

    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        asynchronous: true
    }

    header: ToolBar {
        Flow {
            anchors.fill: parent
            ToolButton {
                text: qsTr("Open")
                icon.name: "document-open"
                onClicked: fileOpenDialog.open()
            }
            ToolButton {
                id: point_mode_button
                checkable: true
                text: "Point mode"
            }
            ToolButton {
                id: square_mode_button
                checkable: true
                text: "Square mode"
            }
        }
    }

    FileDialog {
        id: fileOpenDialog
        title: "Select an image file"
        nameFilters: [
            "Image files (*.png *.jpeg *.jpg)",
        ]
        onAccepted: {
            image.source = selectedFile
        }
    }
}