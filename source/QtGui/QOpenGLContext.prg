/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLCONTEXTGROUP
REQUEST QOPENGLFUNCTIONS
REQUEST QSCREEN
REQUEST QSURFACE
REQUEST QSURFACEFORMAT
#endif

CLASS QOpenGLContext INHERIT QObject

   METHOD new
   METHOD delete
   METHOD create
   METHOD defaultFramebufferObject
   METHOD doneCurrent
   METHOD format
   METHOD functions
   METHOD hasExtension
   METHOD isValid
   METHOD makeCurrent
   METHOD screen
   METHOD setFormat
   METHOD setScreen
   METHOD setShareContext
   METHOD shareContext
   METHOD shareGroup
   METHOD surface
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext

   METHOD onAboutToBeDestroyed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QOpenGLContext>
#endif

#include <QScreen>

/*
QOpenGLContext(QObject * parent = nullptr)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOpenGLContext * o = new QOpenGLContext ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLCONTEXT_DELETE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool create()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CREATE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->create () );
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
GLuint defaultFramebufferObject() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DEFAULTFRAMEBUFFEROBJECT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->defaultFramebufferObject () );
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
void doneCurrent()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DONECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->doneCurrent ();
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
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
      _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT", true );
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
QOpenGLFunctions * functions() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FUNCTIONS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QOpenGLFunctions * ptr = obj->functions ();
      _qt5xhb_createReturnClass ( ptr, "QOPENGLFUNCTIONS", false );
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
QFunctionPointer getProcAddress(const QByteArray & procName) const
*/

/*
bool hasExtension(const QByteArray & extension) const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_HASEXTENSION )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      RBOOL( obj->hasExtension ( *PQBYTEARRAY(1) ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ISVALID )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
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
bool makeCurrent(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_MAKECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE(1) )
    {
#endif
      RBOOL( obj->makeCurrent ( PQSURFACE(1) ) );
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
QScreen * screen() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScreen * ptr = obj->screen ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSCREEN" );
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
void setFormat(const QSurfaceFormat & format)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETFORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
    {
#endif
      obj->setFormat ( *PQSURFACEFORMAT(1) );
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
void setScreen(QScreen * screen)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCREEN(1) )
    {
#endif
      obj->setScreen ( PQSCREEN(1) );
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
void setShareContext(QOpenGLContext * shareContext)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLCONTEXT(1) )
    {
#endif
      obj->setShareContext ( PQOPENGLCONTEXT(1) );
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
QOpenGLContext * shareContext() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QOpenGLContext * ptr = obj->shareContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOPENGLCONTEXT" );
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
QOpenGLContextGroup * shareGroup() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHAREGROUP )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QOpenGLContextGroup * ptr = obj->shareGroup ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOPENGLCONTEXTGROUP" );
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
QSurface * surface() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SURFACE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface * ptr = obj->surface ();
      _qt5xhb_createReturnClass ( ptr, "QSURFACE", false );
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
void swapBuffers(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SWAPBUFFERS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE(1) )
    {
#endif
      obj->swapBuffers ( PQSURFACE(1) );
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
static bool areSharing(QOpenGLContext * first, QOpenGLContext * second)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ARESHARING )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOPENGLCONTEXT(1) && ISQOPENGLCONTEXT(2) )
  {
#endif
      RBOOL( QOpenGLContext::areSharing ( PQOPENGLCONTEXT(1), PQOPENGLCONTEXT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QOpenGLContext * currentContext()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CURRENTCONTEXT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QOpenGLContext * ptr = QOpenGLContext::currentContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOPENGLCONTEXT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void aboutToBeDestroyed()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ONABOUTTOBEDESTROYED )
{
  QOpenGLContext * sender = (QOpenGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "aboutToBeDestroyed()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOpenGLContext::aboutToBeDestroyed, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "aboutToBeDestroyed()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QOPENGLCONTEXT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "aboutToBeDestroyed()", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "aboutToBeDestroyed()" );

      QObject::disconnect( Signals2_get_connection( sender, "aboutToBeDestroyed()" ) );

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
