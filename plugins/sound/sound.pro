#-------------------------------------------------
#
# Project created by QtCreator 2017-06-27T13:52:24
#
#-------------------------------------------------

include(../../interfaces/interfaces.pri)
include(../../widgets/widgets.pri)
include(../../dbus/dbus.pri)

QT       += core gui widgets dbus x11extras
PKGCONFIG += dtkcore dtkwidget dframeworkdbus gsettings-qt
TEMPLATE = lib
CONFIG    += plugin c++11 link_pkgconfig
TARGET     = $$qtLibraryTarget(sound)
DESTDIR    = $$_PRO_FILE_PWD_/../
DISTFILES += sound.json

DEFINES += SOUND_LIBARAY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += soundplugin.cpp \
    componments/horizontalseparator.cpp \
    componments/volumeslider.cpp \
    sinkinputwidget.cpp \
    soundapplet.cpp \
    sounditem.cpp

HEADERS += soundplugin.h \
    componments/horizontalseparator.h \
    componments/volumeslider.h \
    sinkinputwidget.h \
    soundapplet.h \
    sounditem.h

target.path = $${PREFIX}/lib/deepin-topbar/plugins/
INSTALLS   += target

RESOURCES += \
    resources/resources.qrc
