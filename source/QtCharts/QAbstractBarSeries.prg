/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBARSET
#endif

CLASS QAbstractBarSeries INHERIT QAbstractSeries

   METHOD delete
   METHOD barWidth
   METHOD setBarWidth
   METHOD count
   METHOD isLabelsVisible
   METHOD setLabelsVisible
   METHOD labelsFormat
   METHOD setLabelsFormat
   METHOD labelsAngle
   METHOD setLabelsAngle
   METHOD labelsPosition
   METHOD setLabelsPosition
   METHOD append
   METHOD remove
   METHOD take
   METHOD insert
   METHOD barSets
   METHOD clear

   METHOD onBarsetsAdded
   METHOD onBarsetsRemoved
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onLabelsAngleChanged
   METHOD onLabelsFormatChanged
   METHOD onLabelsPositionChanged
   METHOD onLabelsVisibleChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractBarSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAbstractBarSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAbstractBarSeries>
#endif
#endif

using namespace QtCharts;

#include <QtCharts/QBarSet>

/*
explicit QAbstractBarSeries(QAbstractBarSeriesPrivate &d, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QAbstractBarSeries()
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
qreal barWidth() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_BARWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->barWidth () );
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
void setBarWidth(qreal width)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETBARWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBarWidth ( PQREAL(1) );
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
int count() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count () );
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
bool isLabelsVisible() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ISLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLabelsVisible () );
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
void setLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->setLabelsVisible ( OPBOOL(1,true) );
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
QString labelsFormat() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_LABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->labelsFormat () );
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
void setLabelsFormat(const QString &format)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setLabelsFormat ( PQSTRING(1) );
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
qreal labelsAngle() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_LABELSANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->labelsAngle () );
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
void setLabelsAngle(qreal angle)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLabelsAngle ( PQREAL(1) );
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
QAbstractBarSeries::LabelsPosition labelsPosition() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_LABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->labelsPosition () );
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
void setLabelsPosition(QAbstractBarSeries::LabelsPosition position)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLabelsPosition ( (QAbstractBarSeries::LabelsPosition) hb_parni(1) );
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
bool append(QBarSet *set)
*/
void QAbstractBarSeries_append1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->append ( PQBARSET(1) ) );
  }
#endif
}

/*
bool append(QList<QBarSet *> sets)
*/
void QAbstractBarSeries_append2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
       QList<QBarSet *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << (QBarSet *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      RBOOL( obj->append ( par1 ) );
  }
#endif
}

//[1]bool append(QBarSet *set)
//[2]bool append(QList<QBarSet *> sets)

HB_FUNC_STATIC( QABSTRACTBARSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBARSET(1) )
  {
    QAbstractBarSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAbstractBarSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool remove(QBarSet *set)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBARSET(1) )
    {
#endif
      RBOOL( obj->remove ( PQBARSET(1) ) );
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
bool take(QBarSet *set)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_TAKE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBARSET(1) )
    {
#endif
      RBOOL( obj->take ( PQBARSET(1) ) );
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
bool insert(int index, QBarSet *set)
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQBARSET(2) )
    {
#endif
      RBOOL( obj->insert ( PINT(1), PQBARSET(2) ) );
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
QList<QBarSet *> barSets() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_BARSETS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBarSet *> list = obj->barSets ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBARSET" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QBarSet *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
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
void clear()
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
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
void barsetsAdded( QList<QBarSet*> sets )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONBARSETSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("barsetsAdded(QList<QBarSet*>)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::barsetsAdded, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (QList<QBarSet*> arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_DYNS pDynSym = hb_dynsymFindName( "QBARSET" );
            PHB_ITEM pArg1 = hb_itemArrayNew(0);
            int i;
            for(i=0;i<arg1.count();i++)
            {
              if( pDynSym )
              {
                hb_vmPushDynSym( pDynSym );
                hb_vmPushNil();
                hb_vmDo( 0 );
                PHB_ITEM pTempObject = hb_itemNew( NULL );
                hb_itemCopy( pTempObject, hb_stackReturnItem() );
                PHB_ITEM pTempItem = hb_itemNew( NULL );
                hb_itemPutPtr( pTempItem, (QBarSet *) arg1 [i] );
                hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
                hb_arrayAddForward( pArg1, pTempObject );
                hb_itemRelease( pTempObject );
                hb_itemRelease( pTempItem );
              }
              else
              {
                hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS );
              }
            }
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
void barsetsRemoved( QList<QBarSet*> sets )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONBARSETSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("barsetsRemoved(QList<QBarSet*>)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::barsetsRemoved, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (QList<QBarSet*> arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_DYNS pDynSym = hb_dynsymFindName( "QBARSET" );
            PHB_ITEM pArg1 = hb_itemArrayNew(0);
            int i;
            for(i=0;i<arg1.count();i++)
            {
              if( pDynSym )
              {
                hb_vmPushDynSym( pDynSym );
                hb_vmPushNil();
                hb_vmDo( 0 );
                PHB_ITEM pTempObject = hb_itemNew( NULL );
                hb_itemCopy( pTempObject, hb_stackReturnItem() );
                PHB_ITEM pTempItem = hb_itemNew( NULL );
                hb_itemPutPtr( pTempItem, (QBarSet *) arg1 [i] );
                hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
                hb_arrayAddForward( pArg1, pTempObject );
                hb_itemRelease( pTempObject );
                hb_itemRelease( pTempItem );
              }
              else
              {
                hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS );
              }
            }
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
void clicked( int index, QBarSet * barset )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("clicked(int,QBarSet*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::clicked, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (int arg1, QBarSet * arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = Signals4_return_qobject( (QObject *) arg2, "QBARSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void countChanged()
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("countChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::countChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
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
void doubleClicked( int index, QBarSet * barset )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("doubleClicked(int,QBarSet*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::doubleClicked, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (int arg1, QBarSet * arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = Signals4_return_qobject( (QObject *) arg2, "QBARSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void hovered( bool status, int index, QBarSet * barset )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("hovered(bool,int,QBarSet*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::hovered, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (bool arg1, int arg2, QBarSet * arg3) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            PHB_ITEM pArg3 = Signals4_return_qobject( (QObject *) arg3, "QBARSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
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
void labelsAngleChanged( qreal angle )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSANGLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("labelsAngleChanged(qreal)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::labelsAngleChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
void labelsFormatChanged( const QString & format )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("labelsFormatChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::labelsFormatChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
void labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSPOSITIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("labelsPositionChanged(QAbstractBarSeries::LabelsPosition)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::labelsPositionChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (QAbstractBarSeries::LabelsPosition arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
void labelsVisibleChanged()
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("labelsVisibleChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::labelsVisibleChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
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
void pressed( int index, QBarSet * barset )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("pressed(int,QBarSet*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::pressed, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (int arg1, QBarSet * arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = Signals4_return_qobject( (QObject *) arg2, "QBARSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void released( int index, QBarSet * barset )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * sender = (QAbstractBarSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("released(int,QBarSet*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractBarSeries::released, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (int arg1, QBarSet * arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QABSTRACTBARSERIES" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = Signals4_return_qobject( (QObject *) arg2, "QBARSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
