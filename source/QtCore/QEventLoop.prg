/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QEventLoop INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents
   METHOD wakeUp
   METHOD quit

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QEventLoop
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QEventLoop>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtCore/QEventLoop>
#endif

/*
QEventLoop ( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QEVENTLOOP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QEventLoop( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENTLOOP_DELETE )
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals4_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int exec ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXEC )
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RINT( obj->exec( ISNIL(1)? (QEventLoop::ProcessEventsFlags) QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXIT )
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      obj->exit( OPINT(1,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isRunning () const
*/
HB_FUNC_STATIC( QEVENTLOOP_ISRUNNING )
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRunning() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool processEvents ( ProcessEventsFlags flags = AllEvents )
*/
void QEventLoop_processEvents1()
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->processEvents( ISNIL(1)? (QEventLoop::ProcessEventsFlags) QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
  }
}

/*
void processEvents ( ProcessEventsFlags flags, int maxTime )
*/
void QEventLoop_processEvents2()
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->processEvents( (QEventLoop::ProcessEventsFlags) hb_parni(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
//[2]void processEvents ( ProcessEventsFlags flags, int maxTime )

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QEventLoop_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QEventLoop_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void wakeUp ()
*/
HB_FUNC_STATIC( QEVENTLOOP_WAKEUP )
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->wakeUp();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void quit ()
*/
HB_FUNC_STATIC( QEVENTLOOP_QUIT )
{
  auto obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->quit();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
