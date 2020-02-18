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

CLASS QVideoProbe INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoProbe
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QVideoProbe>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QVideoProbe>
#endif

/*
explicit QVideoProbe(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QVIDEOPROBE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QVideoProbe ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QVideoProbe()
*/
HB_FUNC_STATIC( QVIDEOPROBE_DELETE )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isActive() const
*/
HB_FUNC_STATIC( QVIDEOPROBE_ISACTIVE )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive () );
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
bool setSource(QMediaObject * source)
*/
void QVideoProbe_setSource1 ()
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->setSource ( PQMEDIAOBJECT(1) ) );
  }
}

/*
bool setSource(QMediaRecorder * source)
*/
void QVideoProbe_setSource2 ()
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->setSource ( PQMEDIARECORDER(1) ) );
  }
}

//[1]bool setSource(QMediaObject * source)
//[2]bool setSource(QMediaRecorder * mediaRecorder)

HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    QVideoProbe_setSource1();
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    QVideoProbe_setSource2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void flush()
*/
HB_FUNC_STATIC( QVIDEOPROBE_ONFLUSH )
{
  QVideoProbe * sender = (QVideoProbe *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("flush()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVideoProbe::flush, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIDEOPROBE" );
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
}

/*
void videoFrameProbed( const QVideoFrame & frame )
*/
HB_FUNC_STATIC( QVIDEOPROBE_ONVIDEOFRAMEPROBED )
{
  QVideoProbe * sender = (QVideoProbe *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("videoFrameProbed(QVideoFrame)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVideoProbe::videoFrameProbed, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QVideoFrame & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIDEOPROBE" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QVIDEOFRAME" );
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
}

#pragma ENDDUMP
