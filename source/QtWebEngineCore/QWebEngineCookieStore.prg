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

CLASS QWebEngineCookieStore INHERIT QObject

   METHOD delete
   METHOD setCookie
   METHOD deleteCookie
   METHOD deleteSessionCookies
   METHOD deleteAllCookies
   METHOD loadAllCookies

   METHOD onCookieAdded
   METHOD onCookieRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebEngineCookieStore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineCookieStore>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineCookieStore>
#endif

/*
explicit QWebEngineCookieStore(QObject *parent = nullptr) [private]
*/

/*
virtual ~QWebEngineCookieStore()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETE )
{
  auto obj = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals4_disconnect_all_signals( obj, true );
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
void setCookie(const QNetworkCookie &cookie, const QUrl &origin = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_SETCOOKIE )
{
  auto obj = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQNETWORKCOOKIE(1) && (ISQURL(2)||ISNIL(2)) )
    {
#endif
      obj->setCookie( *PQNETWORKCOOKIE(1), ISNIL(2)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(2) );
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
void deleteCookie(const QNetworkCookie &cookie, const QUrl &origin = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETECOOKIE )
{
  auto obj = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQNETWORKCOOKIE(1) && (ISQURL(2)||ISNIL(2)) )
    {
#endif
      obj->deleteCookie( *PQNETWORKCOOKIE(1), ISNIL(2)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(2) );
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
void deleteSessionCookies()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETESESSIONCOOKIES )
{
  auto obj = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->deleteSessionCookies();
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
void deleteAllCookies()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETEALLCOOKIES )
{
  auto obj = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->deleteAllCookies();
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
void loadAllCookies()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_LOADALLCOOKIES )
{
  auto obj = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->loadAllCookies();
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
void cookieAdded(const QNetworkCookie &cookie)
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_ONCOOKIEADDED )
{
  auto sender = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("cookieAdded(QNetworkCookie)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QWebEngineCookieStore::cookieAdded, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QNetworkCookie & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QWEBENGINECOOKIESTORE" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QNETWORKCOOKIE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
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

/*
void cookieRemoved(const QNetworkCookie &cookie)
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_ONCOOKIEREMOVED )
{
  auto sender = (QWebEngineCookieStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("cookieRemoved(QNetworkCookie)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QWebEngineCookieStore::cookieRemoved, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QNetworkCookie & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QWEBENGINECOOKIESTORE" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QNETWORKCOOKIE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
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
