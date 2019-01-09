/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCANDLESTICKSERIES
#endif

CLASS QCandlestickLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete
   METHOD type
   METHOD series

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCandlestickLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCandlestickLegendMarker>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCandlestickLegendMarker>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
explicit QCandlestickLegendMarker(QCandlestickSeries *series, QLegend *legend, QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QCANDLESTICKLEGENDMARKER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(2,3) && ISQCANDLESTICKSERIES(1) && ISQLEGEND(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QCandlestickLegendMarker * o = new QCandlestickLegendMarker ( PQCANDLESTICKSERIES(1), PQLEGEND(2), OPQOBJECT(3,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~QCandlestickLegendMarker()
*/
HB_FUNC_STATIC( QCANDLESTICKLEGENDMARKER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickLegendMarker * obj = (QCandlestickLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual LegendMarkerType type()
*/
HB_FUNC_STATIC( QCANDLESTICKLEGENDMARKER_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickLegendMarker * obj = (QCandlestickLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual QCandlestickSeries* series()
*/
HB_FUNC_STATIC( QCANDLESTICKLEGENDMARKER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickLegendMarker * obj = (QCandlestickLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCandlestickSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QCANDLESTICKSERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

#pragma ENDDUMP
