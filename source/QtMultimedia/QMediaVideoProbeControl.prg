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

CLASS QMediaVideoProbeControl INHERIT QMediaControl

   METHOD delete

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaVideoProbeControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaVideoProbeControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaVideoProbeControl>
#endif

#include <QtMultimedia/QVideoFrame>

/*
explicit QMediaVideoProbeControl(QObject *parent = nullptr) [protected]
*/

/*
virtual ~QMediaVideoProbeControl()
*/
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_DELETE )
{
  auto obj = (QMediaVideoProbeControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals5_disconnect_all_signals( obj, true );
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
void flush()
*/
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONFLUSH )
{
  auto sender = (QMediaVideoProbeControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("flush()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaVideoProbeControl::flush, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QMEDIAVIDEOPROBECONTROL" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONVIDEOFRAMEPROBED )
{
  auto sender = (QMediaVideoProbeControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("videoFrameProbed(QVideoFrame)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaVideoProbeControl::videoFrameProbed, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QVideoFrame & arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QMEDIAVIDEOPROBECONTROL" );
            PHB_ITEM pArg1 = Signals5_return_object( (void *) &arg1, "QVIDEOFRAME" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
