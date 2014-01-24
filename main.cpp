#define QT_NO_WIDGETS
#include "qtquick2controlsapplicationviewer.h"
#include <QUrl>
#include <QDebug>
#include <QQmlContext>
#include <QQuickItem>

int main(int argc, char *argv[])
{
    Application app(argc, argv);

    QtQuick2ControlsApplicationViewer viewer;
    //Загружаем QML из ресурсов
    viewer.setMainQmlFile(QStringLiteral("qrc:/qml/qml/taxiq/main.qml"));
    viewer.show();

    return app.exec();
}
