/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QGridLayout INHERIT QLayout

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addLayout
   METHOD addWidget
   METHOD cellRect
   METHOD columnCount
   METHOD columnMinimumWidth
   METHOD columnStretch
   METHOD getItemPosition
   METHOD horizontalSpacing
   METHOD itemAtPosition
   METHOD originCorner
   METHOD rowCount
   METHOD rowMinimumHeight
   METHOD rowStretch
   METHOD setColumnMinimumWidth
   METHOD setColumnStretch
   METHOD setHorizontalSpacing
   METHOD setOriginCorner
   METHOD setRowMinimumHeight
   METHOD setRowStretch
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD spacing
   METHOD verticalSpacing
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGridLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGridLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGridLayout>
#endif

/*
QGridLayout ( QWidget * parent )
*/
void QGridLayout_new1 ()
{
  QGridLayout * o = new QGridLayout ( PQWIDGET(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QGridLayout ()
*/
void QGridLayout_new2 ()
{
  QGridLayout * o = new QGridLayout ();
  _qt5xhb_returnNewObject( o, false );
}

//[1]QGridLayout ( QWidget * parent )
//[2]QGridLayout ()

HB_FUNC_STATIC( QGRIDLAYOUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QGridLayout_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QGridLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRIDLAYOUT_DELETE )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

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
void addItem ( QLayoutItem * item, int row, int column, int rowSpan = 1, int columnSpan = 1, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ADDITEM )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,6) && ISQLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) )
    {
#endif
      obj->addItem ( PQLAYOUTITEM(1), PINT(2), PINT(3), OPINT(4,1), OPINT(5,1), ISNIL(6)? (Qt::Alignment) 0 : (Qt::Alignment) hb_parni(6) );
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
void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
*/
void QGridLayout_addLayout1 ()
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->addLayout ( PQLAYOUT(1), PINT(2), PINT(3), ISNIL(4)? (Qt::Alignment) 0 : (Qt::Alignment) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
void QGridLayout_addLayout2 ()
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->addLayout ( PQLAYOUT(1), PINT(2), PINT(3), PINT(4), PINT(5), ISNIL(6)? (Qt::Alignment) 0 : (Qt::Alignment) hb_parni(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
//[2]void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRIDLAYOUT_ADDLAYOUT )
{
  if( ISBETWEEN(3,4) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGridLayout_addLayout1();
  }
  else if( ISBETWEEN(5,6) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QGridLayout_addLayout2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
*/
void QGridLayout_addWidget1 ()
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->addWidget ( PQWIDGET(1), PINT(2), PINT(3), ISNIL(4)? (Qt::Alignment) 0 : (Qt::Alignment) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
void QGridLayout_addWidget2 ()
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->addWidget ( PQWIDGET(1), PINT(2), PINT(3), PINT(4), PINT(5), ISNIL(6)? (Qt::Alignment) 0 : (Qt::Alignment) hb_parni(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
//[2]void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRIDLAYOUT_ADDWIDGET )
{
  if( ISBETWEEN(3,4) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGridLayout_addWidget1();
  }
  else if( ISBETWEEN(5,6) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QGridLayout_addWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect cellRect ( int row, int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_CELLRECT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QRect * ptr = new QRect( obj->cellRect ( PINT(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
int columnCount () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COLUMNCOUNT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount () );
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
int columnMinimumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COLUMNMINIMUMWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->columnMinimumWidth ( PINT(1) ) );
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
int columnStretch ( int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COLUMNSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->columnStretch ( PINT(1) ) );
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
void getItemPosition ( int index, int * row, int * column, int * rowSpan, int * columnSpan )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_GETITEMPOSITION )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
    {
#endif
      int par2;
int par3;
int par4;
int par5;
      obj->getItemPosition ( PINT(1), &par2, &par3, &par4, &par5 );
      hb_storni( par2, 2 );
hb_storni( par3, 3 );
hb_storni( par4, 4 );
hb_storni( par5, 5 );
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
int horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_HORIZONTALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->horizontalSpacing () );
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
QLayoutItem * itemAtPosition ( int row, int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ITEMATPOSITION )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QLayoutItem * ptr = obj->itemAtPosition ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM", false );
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
Qt::Corner originCorner () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ORIGINCORNER )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->originCorner () );
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
int rowCount () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ROWCOUNT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount () );
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
int rowMinimumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ROWMINIMUMHEIGHT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->rowMinimumHeight ( PINT(1) ) );
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
int rowStretch ( int row ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ROWSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->rowStretch ( PINT(1) ) );
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
void setColumnMinimumWidth ( int column, int minSize )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETCOLUMNMINIMUMWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setColumnMinimumWidth ( PINT(1), PINT(2) );
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
void setColumnStretch ( int column, int stretch )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETCOLUMNSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setColumnStretch ( PINT(1), PINT(2) );
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
void setHorizontalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETHORIZONTALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHorizontalSpacing ( PINT(1) );
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
void setOriginCorner ( Qt::Corner corner )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETORIGINCORNER )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOriginCorner ( (Qt::Corner) hb_parni(1) );
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
void setRowMinimumHeight ( int row, int minSize )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETROWMINIMUMHEIGHT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setRowMinimumHeight ( PINT(1), PINT(2) );
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
void setRowStretch ( int row, int stretch )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETROWSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setRowStretch ( PINT(1), PINT(2) );
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
void setSpacing ( int spacing )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSpacing ( PINT(1) );
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
void setVerticalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETVERTICALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setVerticalSpacing ( PINT(1) );
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
int spacing () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->spacing () );
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
int verticalSpacing () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_VERTICALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->verticalSpacing () );
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
virtual int count () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COUNT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count () );
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
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_EXPANDINGDIRECTIONS )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->expandingDirections () );
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
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_HASHEIGHTFORWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasHeightForWidth () );
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
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_HEIGHTFORWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->heightForWidth ( PINT(1) ) );
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
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRIDLAYOUT_INVALIDATE )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->invalidate ();
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
virtual QLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ITEMAT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QLayoutItem * ptr = obj->itemAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM", false );
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
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_MAXIMUMSIZE )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->maximumSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual int minimumHeightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_MINIMUMHEIGHTFORWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->minimumHeightForWidth ( PINT(1) ) );
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
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_MINIMUMSIZE )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual void setGeometry ( const QRect & rect )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETGEOMETRY )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      obj->setGeometry ( *PQRECT(1) );
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
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SIZEHINT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_TAKEAT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QLayoutItem * ptr = obj->takeAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
