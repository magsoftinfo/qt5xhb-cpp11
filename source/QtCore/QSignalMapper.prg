/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QSignalMapper INHERIT QObject

   METHOD new
   METHOD delete
   METHOD setMapping
   METHOD removeMappings
   METHOD mapping
   METHOD map

   METHOD onMapped1
   METHOD onMapped2
   METHOD onMapped3
   METHOD onMapped4

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSignalMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSignalMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QSignalMapper>
#endif

#include <QWidget>

/*
QSignalMapper(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSignalMapper * o = new QSignalMapper ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIGNALMAPPER_DELETE )
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, int id)
*/
void QSignalMapper_setMapping1 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setMapping ( PQOBJECT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, const QString &text)
*/
void QSignalMapper_setMapping2 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setMapping ( PQOBJECT(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QWidget *widget)
*/
void QSignalMapper_setMapping3 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setMapping ( PQOBJECT(1), PQWIDGET(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QObject *object)
*/
void QSignalMapper_setMapping4 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setMapping ( PQOBJECT(1), PQOBJECT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setMapping(QObject *sender, int id)
//[2]void setMapping(QObject *sender, const QString &text)
//[3]void setMapping(QObject *sender, QWidget *widget)
//[4]void setMapping(QObject *sender, QObject *object)

HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QSignalMapper_setMapping1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QSignalMapper_setMapping2();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2) )
  {
    QSignalMapper_setMapping3();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2) )
  {
    QSignalMapper_setMapping4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeMappings(QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_REMOVEMAPPINGS )
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      obj->removeMappings ( PQOBJECT(1) );
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
QObject *mapping(int id) const
*/
void QSignalMapper_mapping1 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QObject * ptr = obj->mapping ( PINT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(const QString &text) const
*/
void QSignalMapper_mapping2 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QObject * ptr = obj->mapping ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QWidget *widget) const
*/
void QSignalMapper_mapping3 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QObject * ptr = obj->mapping ( PQWIDGET(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QObject *object) const
*/
void QSignalMapper_mapping4 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QObject * ptr = obj->mapping ( PQOBJECT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

//[1]QObject *mapping(int id) const
//[2]QObject *mapping(const QString &text) const
//[3]QObject *mapping(QWidget *widget) const
//[4]QObject *mapping(QObject *object) const

HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSignalMapper_mapping1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSignalMapper_mapping2();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QSignalMapper_mapping3();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_mapping4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void map()
*/
void QSignalMapper_map1 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->map ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void map(QObject *sender)
*/
void QSignalMapper_map2 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->map ( PQOBJECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void map()
//[2]void map(QObject *sender)

HB_FUNC_STATIC( QSIGNALMAPPER_MAP )
{
  if( ISNUMPAR(0) )
  {
    QSignalMapper_map1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_map2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void mapped( int arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED1 )
{
  if( hb_pcount() == 1 )
  {
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "mapped(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, QOverload<int>::of(&QSignalMapper::mapped), [sender](int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "mapped(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "mapped(int)", connection );

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
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "mapped(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "mapped(int)" ) );

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
void mapped( const QString & arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED2 )
{
  if( hb_pcount() == 1 )
  {
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "mapped(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, QOverload<const QString &>::of(&QSignalMapper::mapped), [sender](QString arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "mapped(QString)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "mapped(QString)", connection );

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
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "mapped(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "mapped(QString)" ) );

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
void mapped( QWidget * arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED3 )
{
  if( hb_pcount() == 1 )
  {
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "mapped(QWidget*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, QOverload<QWidget *>::of(&QSignalMapper::mapped), [sender](QWidget* arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "mapped(QWidget*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QWIDGET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "mapped(QWidget*)", connection );

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
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "mapped(QWidget*)" );

      QObject::disconnect( Signals2_get_connection( sender, "mapped(QWidget*)" ) );

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
void mapped( QObject * arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED4 )
{
  if( hb_pcount() == 1 )
  {
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "mapped(QObject*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, QOverload<QObject *>::of(&QSignalMapper::mapped), [sender](QObject* arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "mapped(QObject*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QOBJECT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "mapped(QObject*)", connection );

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
    QSignalMapper * sender = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "mapped(QObject*)" );

      QObject::disconnect( Signals2_get_connection( sender, "mapped(QObject*)" ) );

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
