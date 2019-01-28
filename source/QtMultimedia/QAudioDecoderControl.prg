/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOBUFFER
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioDecoderControl INHERIT QMediaControl

   METHOD delete
   METHOD audioFormat
   METHOD bufferAvailable
   METHOD duration
   METHOD position
   METHOD read
   METHOD setAudioFormat
   METHOD sourceDevice
   METHOD setSourceDevice
   METHOD setSourceFilename
   METHOD sourceFilename
   METHOD start
   METHOD state
   METHOD stop

   METHOD onBufferAvailableChanged
   METHOD onBufferReady
   METHOD onDurationChanged
   METHOD onError
   METHOD onFinished
   METHOD onFormatChanged
   METHOD onPositionChanged
   METHOD onSourceChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioDecoderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioDecoderControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QAudioDecoderControl>
#endif

/*
explicit QAudioDecoderControl(QObject *parent = nullptr) [protected]
*/

/*
~QAudioDecoderControl()
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_DELETE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QAudioFormat audioFormat() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_AUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioFormat * ptr = new QAudioFormat( obj->audioFormat () );
      _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT", true );
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
virtual bool bufferAvailable() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_BUFFERAVAILABLE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->bufferAvailable () );
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
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_DURATION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->duration () );
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
virtual qint64 position() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_POSITION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->position () );
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
virtual QAudioBuffer read() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_READ )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioBuffer * ptr = new QAudioBuffer( obj->read () );
      _qt5xhb_createReturnClass ( ptr, "QAUDIOBUFFER", true );
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
virtual void setAudioFormat(const QAudioFormat & format) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETAUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
#endif
      obj->setAudioFormat ( *PQAUDIOFORMAT(1) );
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
virtual QIODevice * sourceDevice() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QIODevice * ptr = obj->sourceDevice ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
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
virtual void setSourceDevice(QIODevice * device) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIODEVICE(1) )
    {
#endif
      obj->setSourceDevice ( PQIODEVICE(1) );
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
virtual void setSourceFilename(const QString & fileName) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setSourceFilename ( PQSTRING(1) );
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
virtual QString sourceFilename() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sourceFilename () );
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
virtual void start() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_START )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start ();
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
virtual QAudioDecoder::State state() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STATE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
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
virtual void stop() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STOP )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop ();
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
void bufferAvailableChanged( bool available )
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONBUFFERAVAILABLECHANGED )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "bufferAvailableChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::bufferAvailableChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "bufferAvailableChanged(bool)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "bufferAvailableChanged(bool)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "bufferAvailableChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "bufferAvailableChanged(bool)" ) );

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
void bufferReady()
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONBUFFERREADY )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "bufferReady()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::bufferReady, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "bufferReady()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "bufferReady()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "bufferReady()" );

      QObject::disconnect( Signals2_get_connection( sender, "bufferReady()" ) );

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
void durationChanged( qint64 duration )
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONDURATIONCHANGED )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "durationChanged(qint64)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::durationChanged, 
                                                              [sender]
                                                              (qint64 arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "durationChanged(qint64)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNLL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "durationChanged(qint64)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "durationChanged(qint64)" );

      QObject::disconnect( Signals2_get_connection( sender, "durationChanged(qint64)" ) );

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
void error( int error, const QString & errorString )
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONERROR )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "error(int,QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::error, 
                                                              [sender]
                                                              (int arg1, const QString & arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "error(int,QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "error(int,QString)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "error(int,QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "error(int,QString)" ) );

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
void finished()
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONFINISHED )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "finished()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::finished, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "finished()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "finished()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "finished()" );

      QObject::disconnect( Signals2_get_connection( sender, "finished()" ) );

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
void formatChanged( const QAudioFormat & format )
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONFORMATCHANGED )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "formatChanged(QAudioFormat)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::formatChanged, 
                                                              [sender]
                                                              (const QAudioFormat & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "formatChanged(QAudioFormat)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QAUDIOFORMAT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "formatChanged(QAudioFormat)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "formatChanged(QAudioFormat)" );

      QObject::disconnect( Signals2_get_connection( sender, "formatChanged(QAudioFormat)" ) );

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
void positionChanged( qint64 position )
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONPOSITIONCHANGED )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "positionChanged(qint64)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::positionChanged, 
                                                              [sender]
                                                              (qint64 arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "positionChanged(qint64)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNLL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "positionChanged(qint64)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "positionChanged(qint64)" );

      QObject::disconnect( Signals2_get_connection( sender, "positionChanged(qint64)" ) );

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
void sourceChanged()
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONSOURCECHANGED )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "sourceChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::sourceChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "sourceChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "sourceChanged()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "sourceChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "sourceChanged()" ) );

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
void stateChanged( QAudioDecoder::State state )
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONSTATECHANGED )
{
  QAudioDecoderControl * sender = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "stateChanged(QAudioDecoder::State)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioDecoderControl::stateChanged, 
                                                              [sender]
                                                              (QAudioDecoder::State arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "stateChanged(QAudioDecoder::State)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QAUDIODECODERCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "stateChanged(QAudioDecoder::State)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "stateChanged(QAudioDecoder::State)" );

      QObject::disconnect( Signals2_get_connection( sender, "stateChanged(QAudioDecoder::State)" ) );

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
