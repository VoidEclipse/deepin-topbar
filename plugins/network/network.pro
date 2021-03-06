#-------------------------------------------------
#
# Project created by QtCreator 2017-06-27T13:52:24
#
#-------------------------------------------------

include(../../interfaces/interfaces.pri)
include(../../dbus/dbus.pri)

QT       += core gui widgets dbus x11extras
PKGCONFIG += dtkcore dtkwidget dframeworkdbus
TEMPLATE = lib
CONFIG    += plugin c++11 link_pkgconfig
TARGET     = $$qtLibraryTarget(network)
DESTDIR    = $$_PRO_FILE_PWD_/../
DISTFILES += network.json

DEFINES += NETWORK_LIBARAY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += networkplugin.cpp \
    networkwidget.cpp \
    networkpopupwidget.cpp \
    item/applet/accesspoint.cpp \
    item/applet/accesspointwidget.cpp \
    item/applet/devicecontrolwidget.cpp \
    item/applet/horizontalseperator.cpp \
    item/applet/wirelessapplet.cpp \
    item/deviceitem.cpp \
    item/wireditem.cpp \
    item/wirelessitem.cpp \
    networkdevice.cpp \
    networkmanager.cpp

HEADERS += networkplugin.h \
    networkwidget.h \
    networkpopupwidget.h \
    item/applet/accesspoint.h \
    item/applet/accesspointwidget.h \
    item/applet/devicecontrolwidget.h \
    item/applet/horizontalseperator.h \
    item/applet/wirelessapplet.h \
    item/deviceitem.h \
    item/wireditem.h \
    item/wirelessitem.h \
    networkdevice.h \
    networkmanager.h

target.path = $${PREFIX}/lib/deepin-topbar/plugins/
INSTALLS   += target

RESOURCES += \
    resources.qrc
