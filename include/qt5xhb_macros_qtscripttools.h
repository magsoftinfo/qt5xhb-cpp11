/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTSCRIPTTOOLS_H
#define QT5XHB_MACROS_QTSCRIPTTOOLS_H

#define ISQSCRIPTENGINEDEBUGGER(n)                          _qt5xhb_isObjectDerivedFrom(n,"QScriptEngineDebugger")

#define PQSCRIPTENGINEDEBUGGER(n)                           (QScriptEngineDebugger *) _qt5xhb_itemGetPtr(n)

#define OPQSCRIPTENGINEDEBUGGER(n,v)                        ISNIL(n)? v : (QScriptEngineDebugger *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTSCRIPTTOOLS_H */
