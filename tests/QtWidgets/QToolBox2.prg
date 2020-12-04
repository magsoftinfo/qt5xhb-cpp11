/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oToolBox
   LOCAL oWidget1
   LOCAL oWidget2
   LOCAL oWidget3

   oApp := QApplication():new()

   oToolBox := QToolBox():new()

   oWidget1 := QWidget():new():setObjectName( "widget1" )
   oWidget2 := QWidget():new():setObjectName( "widget2" )
   oWidget3 := QWidget():new():setObjectName( "widget3" )

   oToolBox:addItem( oWidget1, QIcon():new( "../images/cut.png"   ), "Item 1" )
   oToolBox:addItem( oWidget2, QIcon():new( "../images/copy.png"  ), "Item 2" )
   oToolBox:addItem( oWidget3, QIcon():new( "../images/paste.png" ), "Item 3" )

   oToolBox:onCurrentChanged( {|oSender,nItem|qout( nItem ),qout( oToolBox:currentWidget():objectName() )} )

   oToolBox:show()

   oApp:exec()

   oToolBox:delete()

   oApp:delete()

RETURN
