#include "qtquick2controlsapplicationviewer.h"
#include <QUrl>
#include <QDebug>
#include <QQmlContext>
#include <QQuickItem>
#include <QFile>

int main(int argc, char *argv[])
{
    Application app(argc, argv);

    QtQuick2ControlsApplicationViewer viewer;
    //Загружаем QML из ресурсов
    viewer.setMainQmlFile(QStringLiteral("qrc:/qml/qml/main.qml"));
    viewer.show();

    return app.exec();
}
