/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   METHOD delete
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry
   METHOD screenNumber

   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesktopWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QDesktopWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QDesktopWidget>
#endif

HB_FUNC_STATIC( QDESKTOPWIDGET_DELETE )
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QRect availableGeometry( int screen = -1 ) const
*/
void QDesktopWidget_availableGeometry1()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    auto ptr = new QRect( obj->availableGeometry( OPINT( 1, -1 ) ) );
    Qt5xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry( const QWidget * widget ) const
*/
void QDesktopWidget_availableGeometry2()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    auto ptr = new QRect( obj->availableGeometry( PQWIDGET( 1 ) ) );
    Qt5xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry( const QPoint & p ) const
*/
void QDesktopWidget_availableGeometry3()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    auto ptr = new QRect( obj->availableGeometry( *PQPOINT( 1 ) ) );
    Qt5xHb::createReturnClass( ptr, "QRECT", true );
  }
}

HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY )
{
  if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QDesktopWidget_availableGeometry1();
  }
  else if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
  {
    QDesktopWidget_availableGeometry2();
  }
  else if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
  {
    QDesktopWidget_availableGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isVirtualDesktop() const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ISVIRTUALDESKTOP )
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isVirtualDesktop() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int primaryScreen() const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_PRIMARYSCREEN )
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->primaryScreen() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWidget * screen( int screen = -1 )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREEN )
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      QWidget * ptr = obj->screen( OPINT( 1, -1 ) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int screenCount() const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENCOUNT )
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->screenCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QRect screenGeometry( int screen = -1 ) const
*/
void QDesktopWidget_screenGeometry1()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    auto ptr = new QRect( obj->screenGeometry( OPINT( 1, -1 ) ) );
    Qt5xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry( const QWidget * widget ) const
*/
void QDesktopWidget_screenGeometry2()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    auto ptr = new QRect( obj->screenGeometry( PQWIDGET( 1 ) ) );
    Qt5xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry( const QPoint & p ) const
*/
void QDesktopWidget_screenGeometry3()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    auto ptr = new QRect( obj->screenGeometry( *PQPOINT( 1 ) ) );
    Qt5xHb::createReturnClass( ptr, "QRECT", true );
  }
}

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY )
{
  if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QDesktopWidget_screenGeometry1();
  }
  else if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
  {
    QDesktopWidget_screenGeometry2();
  }
  else if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
  {
    QDesktopWidget_screenGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int screenNumber( const QWidget * widget = nullptr ) const
*/
void QDesktopWidget_screenNumber1()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    RINT( obj->screenNumber( OPQWIDGET( 1, nullptr ) ) );
  }
}

/*
int screenNumber( const QPoint & point ) const
*/
void QDesktopWidget_screenNumber2()
{
  auto obj = qobject_cast< QDesktopWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    RINT( obj->screenNumber( *PQPOINT( 1 ) ) );
  }
}

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQWIDGET( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QDesktopWidget_screenNumber1();
  }
  else if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
  {
    QDesktopWidget_screenNumber2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resized( int screen )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ONRESIZED )
{
  auto sender = (QDesktopWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("resized(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDesktopWidget::resized, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDESKTOPWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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

/*
void screenCountChanged( int newCount )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ONSCREENCOUNTCHANGED )
{
  auto sender = (QDesktopWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("screenCountChanged(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDesktopWidget::screenCountChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDESKTOPWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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

/*
void workAreaResized( int screen )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ONWORKAREARESIZED )
{
  auto sender = (QDesktopWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("workAreaResized(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDesktopWidget::workAreaResized, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDESKTOPWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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

#pragma ENDDUMP
