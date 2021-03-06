/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QOPENGLCONTEXT
REQUEST QSURFACEFORMAT
#endif

CLASS QOpenGLWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD format
   METHOD setFormat
   METHOD isValid
   METHOD makeCurrent
   METHOD doneCurrent
   METHOD context
   METHOD defaultFramebufferObject
   METHOD grabFramebuffer

   METHOD onAboutToCompose
   METHOD onFrameSwapped
   METHOD onAboutToResize
   METHOD onResized

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWidgets/QOpenGLWidget>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWidgets/QOpenGLWidget>
#endif
#endif

#include <QtGui/QOpenGLContext>

/*
QOpenGLWidget(QWidget* parent = nullptr, Qt::WindowFlags f = 0)
*/
HB_FUNC_STATIC( QOPENGLWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||HB_ISNIL(1)) && (HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    auto obj = new QOpenGLWidget( OPQWIDGET(1,nullptr), HB_ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

HB_FUNC_STATIC( QOPENGLWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
#endif
}

/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSurfaceFormat( obj->format() );
      Qt5xHb::createReturnClass( ptr, "QSURFACEFORMAT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
void setFormat(const QSurfaceFormat &format)
*/
HB_FUNC_STATIC( QOPENGLWIDGET_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
    {
#endif
      obj->setFormat( *PQSURFACEFORMAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
void makeCurrent()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_MAKECURRENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->makeCurrent();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

/*
void doneCurrent()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_DONECURRENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->doneCurrent();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

/*
QOpenGLContext *context() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_CONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QOpenGLContext * ptr = obj->context();
      Qt5xHb::createReturnQObjectClass( ptr, "QOPENGLCONTEXT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
GLuint defaultFramebufferObject() const
*/
HB_FUNC_STATIC( QOPENGLWIDGET_DEFAULTFRAMEBUFFEROBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->defaultFramebufferObject() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
QImage grabFramebuffer()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_GRABFRAMEBUFFER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_OPENGL
  auto obj = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QImage( obj->grabFramebuffer() );
      Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
void aboutToCompose()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_ONABOUTTOCOMPOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("aboutToCompose()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOpenGLWidget::aboutToCompose, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOPENGLWIDGET" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void frameSwapped()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_ONFRAMESWAPPED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("frameSwapped()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOpenGLWidget::frameSwapped, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOPENGLWIDGET" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void aboutToResize()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_ONABOUTTORESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("aboutToResize()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOpenGLWidget::aboutToResize, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOPENGLWIDGET" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void resized()
*/
HB_FUNC_STATIC( QOPENGLWIDGET_ONRESIZED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QOpenGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("resized()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOpenGLWidget::resized, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOPENGLWIDGET" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
