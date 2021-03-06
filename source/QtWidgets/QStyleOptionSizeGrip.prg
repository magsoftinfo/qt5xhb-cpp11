/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionSizeGrip INHERIT QStyleOptionComplex

   METHOD new
   METHOD corner
   METHOD setCorner

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionSizeGrip
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionSizeGrip>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionSizeGrip>
#endif

/*
QStyleOptionSizeGrip()
*/
void QStyleOptionSizeGrip_new1()
{
  auto obj = new QStyleOptionSizeGrip();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionSizeGrip( const QStyleOptionSizeGrip & other )
*/
void QStyleOptionSizeGrip_new2()
{
  auto obj = new QStyleOptionSizeGrip( *PQSTYLEOPTIONSIZEGRIP( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONSIZEGRIP_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QStyleOptionSizeGrip_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQSTYLEOPTIONSIZEGRIP( 1 ) )
  {
    QStyleOptionSizeGrip_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Corner corner
*/
HB_FUNC_STATIC( QSTYLEOPTIONSIZEGRIP_CORNER )
{
  auto obj = static_cast< QStyleOptionSizeGrip * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    if( ISNUMPAR( 0 ) )
    {
      RENUM( obj->corner );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSIZEGRIP_SETCORNER )
{
  auto obj = static_cast< QStyleOptionSizeGrip * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->corner = static_cast<Qt::Corner>( hb_parni( 1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
