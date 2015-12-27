CONFIG += warn_on debug_and_release \
          qt \
          thread

QT += sql network widgets printsupport

DESTDIR = ./bin
TARGET = linlogbook
OBJECTS_DIR = ./.tmp
UI_DIR= ./.tmp/ui_tmp
MOC_DIR= ./.tmp

TEMPLATE = app
TARGET = linlogbook
DEPENDPATH += . src src/gui
INCLUDEPATH += . src

QMAKE_CXXFLAGS_DEBUG += -O0 \
-g3

# Input
HEADERS += src/common.h \
           src/createdatabasefields.h \
           src/definetablesitem.h \
           src/definetablesmodel.h \
           src/detailview.h \
           src/editqsodelegate.h \
           src/editqsoview.h \
           src/enumerationeditor.h \
           src/integeritemdelegate.h \
           src/linlogbook.h \
           src/linlogbookserver.h \
           src/qslcardinfo.h \
           src/qsoserverthread.h \
           src/qsotablemodel.h \
           src/setup.h \
           src/setupqslcard.h \
           src/statisticstotal.h
FORMS += src/gui/createdatabasefields.ui \
         src/gui/detailview.ui \
         src/gui/linlogbook.ui \
         src/gui/select4export.ui \
         src/gui/setup.ui \
         src/gui/setupqslcard.ui \
         src/gui/statisticstotal.ui
SOURCES += src/createdatabasefields.cpp \
           src/definetablesitem.cpp \
           src/definetablesmodel.cpp \
           src/detailview.cpp \
           src/editqsodelegate.cpp \
           src/editqsoview.cpp \
           src/enumerationeditor.cpp \
           src/integeritemdelegate.cpp \
           src/linlogbook.cpp \
           src/linlogbookserver.cpp \
           src/main.cpp \
           src/qslcardinfo.cpp \
           src/qsoserverthread.cpp \
           src/qsotablemodel.cpp \
           src/setup.cpp \
           src/setupqslcard.cpp \
           src/statisticstotal.cpp
RESOURCES += src/application.qrc
desktop.path=/usr/share/applications
desktop.files=data/linlogbook.desktop
images.path=/usr/share/pixmaps
images.files=images/linlogbook.png

INSTALLS +=desktop
INSTALLS +=images
