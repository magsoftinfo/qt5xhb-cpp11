/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QCANDLESTICKSERIES
#endif

CLASS QCandlestickModelMapper INHERIT QObject

   METHOD model
   METHOD setModel
   METHOD series
   METHOD setSeries
   METHOD orientation

   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCandlestickModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickModelMapper>
#endif
#endif

#include <QAbstractItemModel>
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickSeries>
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
explicit QCandlestickModelMapper(QObject *parent = nullptr) (abstract)
*/

/*
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
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
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QCandlestickSeries *series() const
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
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

/*
void setSeries(QCandlestickSeries *series)
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCANDLESTICKSERIES(1) )
    {
#endif
      obj->setSeries ( PQCANDLESTICKSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual Qt::Orientation orientation() const = 0
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation () );
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
void setTimestamp(int timestamp) [protected]
*/

/*
int timestamp() const [protected]
*/

/*
void setOpen(int open) [protected]
*/

/*
int open() const [protected]
*/

/*
void setHigh(int high) [protected]
*/

/*
int high() const [protected]
*/

/*
void setLow(int low) [protected]
*/

/*
int low() const [protected]
*/

/*
void setClose(int close) [protected]
*/

/*
int close() const [protected]
*/

/*
void setFirstSetSection(int firstSetSection) [protected]
*/

/*
int firstSetSection() const [protected]
*/

/*
void setLastSetSection(int lastSetSection) [protected]
*/

/*
int lastSetSection() const [protected]
*/

/*
void modelReplaced()
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * sender = (QCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("modelReplaced()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCandlestickModelMapper::modelReplaced, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
hb_retl( false );
#endif
}

/*
void seriesReplaced()
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * sender = (QCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("seriesReplaced()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCandlestickModelMapper::seriesReplaced, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
hb_retl( false );
#endif
}

#pragma ENDDUMP
