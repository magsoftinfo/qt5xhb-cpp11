/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMediaServiceProviderHint

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD type
   METHOD mimeType
   METHOD codecs
   METHOD device
   METHOD features
   METHOD cameraPosition

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaServiceProviderHint
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaServiceProviderHint>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaServiceProviderHint>
#endif

/*
QMediaServiceProviderHint()
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW1 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaServiceProviderHint(const QString &mimeType, const QStringList& codecs)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW2 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( PQSTRING(1), PQSTRINGLIST(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaServiceProviderHint(const QByteArray &device)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW3 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( *PQBYTEARRAY(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaServiceProviderHint(QCamera::Position position)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW4 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( (QCamera::Position) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaServiceProviderHint(Features features)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW5 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( (QMediaServiceProviderHint::Features) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaServiceProviderHint(const QMediaServiceProviderHint &other)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW6 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( *PQMEDIASERVICEPROVIDERHINT(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QMediaServiceProviderHint()
//[2]QMediaServiceProviderHint(const QString &mimeType, const QStringList& codecs)
//[3]QMediaServiceProviderHint(const QByteArray &device)
//[4]QMediaServiceProviderHint(QCamera::Position position)
//[5]QMediaServiceProviderHint(Features features)
//[6]QMediaServiceProviderHint(const QMediaServiceProviderHint &other)

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2)  )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQMEDIASERVICEPROVIDERHINT(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QMediaServiceProviderHint()
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_DELETE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_ISNULL )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
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
Type type() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_TYPE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
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
}

/*
QString mimeType() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_MIMETYPE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->mimeType () );
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
QStringList codecs() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_CODECS )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->codecs () );
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
QByteArray device() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_DEVICE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->device () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
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
Features features() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_FEATURES )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->features () );
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
QCamera::Position cameraPosition() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_CAMERAPOSITION )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->cameraPosition () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
