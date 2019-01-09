/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCategoryAxis INHERIT QValueAxis

   METHOD new
   METHOD delete
   METHOD startValue
   METHOD setStartValue
   METHOD categoriesLabels
   METHOD count
   METHOD labelsPosition
   METHOD setLabelsPosition
   METHOD type
   METHOD append
   METHOD remove
   METHOD replaceLabel
   METHOD endValue

   METHOD onCategoriesChanged
   METHOD onLabelsPositionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCategoryAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QCategoryAxis>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QCategoryAxis>
#endif
#endif

using namespace QtCharts;

/*
explicit QCategoryAxis(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCategoryAxis * o = new QCategoryAxis ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QCategoryAxis(QCategoryAxisPrivate &d, QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QCategoryAxis()
*/
HB_FUNC_STATIC( QCATEGORYAXIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
qreal startValue(const QString &categoryLabel = QString()) const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_STARTVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      RQREAL( obj->startValue ( OPQSTRING(1,QString()) ) );
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
void setStartValue(qreal min)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_SETSTARTVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setStartValue ( PQREAL(1) );
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
QStringList categoriesLabels()
*/
HB_FUNC_STATIC( QCATEGORYAXIS_CATEGORIESLABELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->categoriesLabels () );
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
int count() const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
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
QCategoryAxis::AxisLabelsPosition labelsPosition() const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_LABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
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
void setLabelsPosition(QCategoryAxis::AxisLabelsPosition position)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_SETLABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLabelsPosition ( (QCategoryAxis::AxisLabelsPosition) hb_parni(1) );
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
AxisType type() const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
void append(const QString &label, qreal categoryEndValue)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_APPEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
#endif
      obj->append ( PQSTRING(1), PQREAL(2) );
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
void remove(const QString &label)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->remove ( PQSTRING(1) );
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
void replaceLabel(const QString &oldLabel, const QString &newLabel)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_REPLACELABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->replaceLabel ( PQSTRING(1), PQSTRING(2) );
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
qreal endValue(const QString &categoryLabel) const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_ENDVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQREAL( obj->endValue ( PQSTRING(1) ) );
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

using namespace QtCharts;

/*
void categoriesChanged()
*/
HB_FUNC_STATIC( QCATEGORYAXIS_ONCATEGORIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QCategoryAxis * sender = (QCategoryAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "categoriesChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCategoryAxis::categoriesChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "categoriesChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCATEGORYAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "categoriesChanged()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    QCategoryAxis * sender = (QCategoryAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "categoriesChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "categoriesChanged()" ) );

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
#endif
}

/*
void labelsPositionChanged( QCategoryAxis::AxisLabelsPosition position )
*/
HB_FUNC_STATIC( QCATEGORYAXIS_ONLABELSPOSITIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QCategoryAxis * sender = (QCategoryAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCategoryAxis::labelsPositionChanged, 
                                                              [sender]
                                                              (QCategoryAxis::AxisLabelsPosition arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCATEGORYAXIS" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    QCategoryAxis * sender = (QCategoryAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)" );

      QObject::disconnect( Signals2_get_connection( sender, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)" ) );

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
#endif
}

#pragma ENDDUMP
