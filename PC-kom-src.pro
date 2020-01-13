QT			+= core gui

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = frep3
TEMPLATE = app

GIT_VERSION = $$system(git --git-dir $$PWD/../.git --work-tree $$PWD describe --always --tags)
DEFINES += GIT_VERSION=\\\"$$GIT_VERSION\\\"

INCLUDEPATH += \
    ./src/

LIBS += -lpugixml

SOURCES += main.cpp

# HEADERS  += mainwindow.h 

