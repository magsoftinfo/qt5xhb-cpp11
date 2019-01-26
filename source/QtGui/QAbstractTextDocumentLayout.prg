/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QTEXTDOCUMENT
REQUEST QTEXTOBJECTINTERFACE
#endif

CLASS QAbstractTextDocumentLayout INHERIT QObject

   METHOD delete
   METHOD anchorAt
   METHOD blockBoundingRect
   METHOD document
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD handlerForObject
   METHOD hitTest
   METHOD pageCount
   METHOD paintDevice
   METHOD registerHandler
   METHOD setPaintDevice

   METHOD onDocumentSizeChanged
   METHOD onPageCountChanged
   METHOD onUpdate
   METHOD onUpdateBlock

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractTextDocumentLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractTextDocumentLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QAbstractTextDocumentLayout>
#endif

#include <QTextBlock>

HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DELETE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString anchorAt ( const QPointF & position ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ANCHORAT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      RQSTRING( obj->anchorAt ( *PQPOINTF(1) ) );
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
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
    {
#endif
      QRectF * ptr = new QRectF( obj->blockBoundingRect ( *PQTEXTBLOCK(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
QTextDocument * document () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextDocument * ptr = obj->document ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QTEXTDOCUMENT" );
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
virtual QSizeF documentSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->documentSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
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
virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
    {
#endif
      QRectF * ptr = new QRectF( obj->frameBoundingRect ( PQTEXTFRAME(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
QTextObjectInterface * handlerForObject ( int objectType ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HANDLERFOROBJECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QTextObjectInterface * ptr = obj->handlerForObject ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTEXTOBJECTINTERFACE", false );
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
virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HITTEST )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
    {
#endif
      RINT( obj->hitTest ( *PQPOINTF(1), (Qt::HitTestAccuracy) hb_parni(2) ) );
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
virtual int pageCount () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->pageCount () );
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
QPaintDevice * paintDevice () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPaintDevice * ptr = obj->paintDevice ();
      _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE", false );
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
void registerHandler ( int objectType, QObject * component )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_REGISTERHANDLER )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQOBJECT(2) )
    {
#endif
      obj->registerHandler ( PINT(1), PQOBJECT(2) );
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
void setPaintDevice ( QPaintDevice * device )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_SETPAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTDEVICE(1) )
    {
#endif
      obj->setPaintDevice ( PQPAINTDEVICE(1) );
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
void documentSizeChanged( const QSizeF & newSize )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ONDOCUMENTSIZECHANGED )
{
  QAbstractTextDocumentLayout * sender = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "documentSizeChanged(QSizeF)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractTextDocumentLayout::documentSizeChanged, 
                                                              [sender]
                                                              (const QSizeF & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "documentSizeChanged(QSizeF)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTTEXTDOCUMENTLAYOUT" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QSIZEF" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "documentSizeChanged(QSizeF)", connection );

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
      Signals2_disconnection( sender, "documentSizeChanged(QSizeF)" );

      QObject::disconnect( Signals2_get_connection( sender, "documentSizeChanged(QSizeF)" ) );

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
void pageCountChanged( int newPages )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ONPAGECOUNTCHANGED )
{
  QAbstractTextDocumentLayout * sender = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "pageCountChanged(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractTextDocumentLayout::pageCountChanged, 
                                                              [sender]
                                                              (int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "pageCountChanged(int)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTTEXTDOCUMENTLAYOUT" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "pageCountChanged(int)", connection );

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
      Signals2_disconnection( sender, "pageCountChanged(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "pageCountChanged(int)" ) );

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
void update( const QRectF & rect = QRectF( 0., 0., 1000000000., 1000000000. ) )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATE )
{
  QAbstractTextDocumentLayout * sender = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "update(QRectF)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractTextDocumentLayout::update, 
                                                              [sender]
                                                              (const QRectF & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "update(QRectF)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTTEXTDOCUMENTLAYOUT" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QRECTF" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "update(QRectF)", connection );

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
      Signals2_disconnection( sender, "update(QRectF)" );

      QObject::disconnect( Signals2_get_connection( sender, "update(QRectF)" ) );

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
void updateBlock( const QTextBlock & block )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATEBLOCK )
{
  QAbstractTextDocumentLayout * sender = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "updateBlock(QTextBlock)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractTextDocumentLayout::updateBlock, 
                                                              [sender]
                                                              (const QTextBlock & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "updateBlock(QTextBlock)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTTEXTDOCUMENTLAYOUT" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QTEXTBLOCK" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "updateBlock(QTextBlock)", connection );

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
      Signals2_disconnection( sender, "updateBlock(QTextBlock)" );

      QObject::disconnect( Signals2_get_connection( sender, "updateBlock(QTextBlock)" ) );

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
