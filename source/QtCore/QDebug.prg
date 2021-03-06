/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDebug

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD space
   METHOD nospace
   METHOD maybeSpace
   METHOD autoInsertSpaces
   METHOD setAutoInsertSpaces
   METHOD maybeQuote
   METHOD noquote
   METHOD quote
   METHOD resetFormat
   METHOD setVerbosity
   METHOD verbosity

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDebug
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QDebug>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QDebug>
#endif

/*
QDebug( QIODevice * device )
*/
void QDebug_new1()
{
  auto obj = new QDebug( PQIODEVICE( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDebug( QtMsgType t )
*/
void QDebug_new3()
{
  auto obj = new QDebug( static_cast<QtMsgType>( hb_parni( 1 ) ) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDebug( const QDebug & o )
*/
void QDebug_new4()
{
  auto obj = new QDebug( *PQDEBUG( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QDEBUG_NEW )
{
  if( ISNUMPAR( 1 ) && ISQIODEVICE( 1 ) )
  {
    QDebug_new1();
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    QDebug_new3();
  }
  else if( ISNUMPAR( 1 ) && ISQDEBUG( 1 ) )
  {
    QDebug_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDEBUG_DELETE )
{
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
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
void swap( QDebug & other )
*/
HB_FUNC_STATIC( QDEBUG_SWAP )
{
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQDEBUG( 1 ) )
    {
#endif
      obj->swap( *PQDEBUG( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDebug & space()
*/
HB_FUNC_STATIC( QDEBUG_SPACE )
{
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDebug * ptr = &obj->space();
      Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
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
QDebug & nospace()
*/
HB_FUNC_STATIC( QDEBUG_NOSPACE )
{
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDebug * ptr = &obj->nospace();
      Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
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
QDebug & maybeSpace()
*/
HB_FUNC_STATIC( QDEBUG_MAYBESPACE )
{
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDebug * ptr = &obj->maybeSpace();
      Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
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
bool autoInsertSpaces() const
*/
HB_FUNC_STATIC( QDEBUG_AUTOINSERTSPACES )
{
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->autoInsertSpaces() );
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
void setAutoInsertSpaces( bool b )
*/
HB_FUNC_STATIC( QDEBUG_SETAUTOINSERTSPACES )
{
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setAutoInsertSpaces( PBOOL( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDebug & maybeQuote( char c = '"' )
*/
HB_FUNC_STATIC( QDEBUG_MAYBEQUOTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISCHAR( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      QDebug * ptr = &obj->maybeQuote( OPCHAR( 1, '"' ) );
      Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QDebug & noquote()
*/
HB_FUNC_STATIC( QDEBUG_NOQUOTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDebug * ptr = &obj->noquote();
      Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QDebug & quote()
*/
HB_FUNC_STATIC( QDEBUG_QUOTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDebug * ptr = &obj->quote();
      Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QDebug & resetFormat()
*/
HB_FUNC_STATIC( QDEBUG_RESETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDebug * ptr = &obj->resetFormat();
      Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setVerbosity( int verbosityLevel )
*/
HB_FUNC_STATIC( QDEBUG_SETVERBOSITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setVerbosity( PINT( 1 ) );
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
}

/*
int verbosity() const
*/
void QDebug_verbosity1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RINT( obj->verbosity() );
  }
#endif
}

/*
QDebug & verbosity( int verbosityLevel )
*/
void QDebug_verbosity2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = static_cast< QDebug * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    QDebug * ptr = &obj->verbosity( PINT( 1 ) );
    Qt5xHb::createReturnClass( ptr, "QDEBUG", false );
  }
#endif
}

HB_FUNC_STATIC( QDEBUG_VERBOSITY )
{
  if( ISNUMPAR( 0 ) )
  {
    QDebug_verbosity1();
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    QDebug_verbosity2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDEBUG_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDEBUG_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDEBUG_NEWFROM );
}

HB_FUNC_STATIC( QDEBUG_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDEBUG_NEWFROM );
}

HB_FUNC_STATIC( QDEBUG_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QDEBUG_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl( 1 ) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
