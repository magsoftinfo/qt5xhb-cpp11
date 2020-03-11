/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QDragMoveEvent INHERIT QDropEvent

   METHOD new
   METHOD delete
   METHOD accept
   METHOD answerRect
   METHOD ignore

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDragMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QDragMoveEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QDragMoveEvent>
#endif

/*
QDragMoveEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = DragMove )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_NEW )
{
  if( ISBETWEEN(5,6) && ISQPOINT(1) && ISNUM(2) && ISQMIMEDATA(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    auto obj = new QDragMoveEvent ( *PQPOINT(1), (Qt::DropActions) hb_parni(2), PQMIMEDATA(3), (Qt::MouseButtons) hb_parni(4), (Qt::KeyboardModifiers) hb_parni(5), ISNIL(6)? (QEvent::Type) QEvent::DragMove : (QEvent::Type) hb_parni(6) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDRAGMOVEEVENT_DELETE )
{
  auto obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
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
void accept ( const QRect & rectangle )
*/
void QDragMoveEvent_accept1 ()
{
  auto obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->accept ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void accept ()
*/
void QDragMoveEvent_accept2 ()
{
  auto obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->accept ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void accept ( const QRect & rectangle )
//[2]void accept ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QDragMoveEvent_accept1();
  }
  else if( ISNUMPAR(0) )
  {
    QDragMoveEvent_accept2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect answerRect () const
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ANSWERRECT )
{
  auto obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRect( obj->answerRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
void ignore ( const QRect & rectangle )
*/
void QDragMoveEvent_ignore1 ()
{
  auto obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->ignore ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignore ()
*/
void QDragMoveEvent_ignore2 ()
{
  auto obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->ignore ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ignore ( const QRect & rectangle )
//[2]void ignore ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QDragMoveEvent_ignore1();
  }
  else if( ISNUMPAR(0) )
  {
    QDragMoveEvent_ignore2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
