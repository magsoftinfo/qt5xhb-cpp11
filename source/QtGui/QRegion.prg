/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QRegion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEmpty
   METHOD isNull
   METHOD contains
   METHOD translate
   METHOD translated
   METHOD united
   METHOD subtracted
   METHOD xored
   METHOD intersects
   METHOD boundingRect
   METHOD rectCount

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRegion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QRegion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QRegion>
#endif

/*
QRegion()
*/
void QRegion_new1()
{
  auto obj = new QRegion();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRegion( int x, int y, int w, int h, QRegion::RegionType t = QRegion::Rectangle )
*/
void QRegion_new2()
{
  auto obj = new QRegion( PINT(1), PINT(2), PINT(3), PINT(4), HB_ISNIL(5)? (QRegion::RegionType) QRegion::Rectangle : (QRegion::RegionType) hb_parni(5) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRegion( const QRect & r, QRegion::RegionType t = QRegion::Rectangle )
*/
void QRegion_new3()
{
  auto obj = new QRegion( *PQRECT(1), HB_ISNIL(2)? (QRegion::RegionType) QRegion::Rectangle : (QRegion::RegionType) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRegion( const QPolygon & pa, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
void QRegion_new4()
{
  auto obj = new QRegion( *PQPOLYGON(1), HB_ISNIL(2)? (Qt::FillRule) Qt::OddEvenFill : (Qt::FillRule) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRegion( const QRegion & region )
*/
void QRegion_new5()
{
  auto obj = new QRegion( *PQREGION(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRegion( const QBitmap & bitmap )
*/
void QRegion_new6()
{
  auto obj = new QRegion( *PQBITMAP(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QREGION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegion_new1();
  }
  else if( ISBETWEEN(4,5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && (HB_ISNUM(5)||HB_ISNIL(5)) )
  {
    QRegion_new2();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    QRegion_new3();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    QRegion_new4();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_new5();
  }
  else if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QRegion_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGION_DELETE )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

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
void swap( QRegion & other )
*/
HB_FUNC_STATIC( QREGION_SWAP )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      obj->swap( *PQREGION(1) );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QREGION_ISEMPTY )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QREGION_ISNULL )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
bool contains( const QPoint & p ) const
*/
void QRegion_contains1()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->contains( *PQPOINT(1) ) );
  }
}

/*
bool contains( const QRect & r ) const
*/
void QRegion_contains2()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->contains( *PQRECT(1) ) );
  }
}

HB_FUNC_STATIC( QREGION_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_contains1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void translate( int dx, int dy )
*/
void QRegion_translate1()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->translate( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate( const QPoint & p )
*/
void QRegion_translate2()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->translate( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QREGION_TRANSLATE )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    QRegion_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion translated( int dx, int dy ) const
*/
void QRegion_translated1()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QRegion( obj->translated( PINT(1), PINT(2) ) );
    Qt5xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
QRegion translated( const QPoint & p ) const
*/
void QRegion_translated2()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QRegion( obj->translated( *PQPOINT(1) ) );
    Qt5xHb::createReturnClass( ptr, "QREGION", true );
  }
}

HB_FUNC_STATIC( QREGION_TRANSLATED )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    QRegion_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion united( const QRegion & r ) const
*/
void QRegion_united1()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QRegion( obj->united( *PQREGION(1) ) );
    Qt5xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
QRegion united( const QRect & r ) const
*/
void QRegion_united2()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QRegion( obj->united( *PQRECT(1) ) );
    Qt5xHb::createReturnClass( ptr, "QREGION", true );
  }
}

HB_FUNC_STATIC( QREGION_UNITED )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_united1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_united2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion subtracted( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_SUBTRACTED )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      auto ptr = new QRegion( obj->subtracted( *PQREGION(1) ) );
      Qt5xHb::createReturnClass( ptr, "QREGION", true );
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
QRegion xored( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_XORED )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      auto ptr = new QRegion( obj->xored( *PQREGION(1) ) );
      Qt5xHb::createReturnClass( ptr, "QREGION", true );
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
bool intersects( const QRegion & r ) const
*/
void QRegion_intersects1()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->intersects( *PQREGION(1) ) );
  }
}

/*
bool intersects( const QRect & r ) const
*/
void QRegion_intersects2()
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->intersects( *PQRECT(1) ) );
  }
}

HB_FUNC_STATIC( QREGION_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_intersects1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_intersects2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect boundingRect() const
*/
HB_FUNC_STATIC( QREGION_BOUNDINGRECT )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRect( obj->boundingRect() );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
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
int rectCount() const
*/
HB_FUNC_STATIC( QREGION_RECTCOUNT )
{
  auto obj = (QRegion *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rectCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QREGION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
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

HB_FUNC_STATIC( QREGION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGION_NEWFROM );
}

HB_FUNC_STATIC( QREGION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGION_NEWFROM );
}

HB_FUNC_STATIC( QREGION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
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
