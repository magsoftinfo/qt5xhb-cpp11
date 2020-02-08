/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QOpenGLBuffer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allocate
   METHOD bind
   METHOD bufferId
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD map
   METHOD read
   METHOD release
   METHOD setUsagePattern
   METHOD size
   METHOD type
   METHOD unmap
   METHOD usagePattern
   METHOD write

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLBuffer>
#endif

/*
QOpenGLBuffer()
*/
void QOpenGLBuffer_new1 ()
{
  QOpenGLBuffer * o = new QOpenGLBuffer ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QOpenGLBuffer(QOpenGLBuffer::Type type)
*/
void QOpenGLBuffer_new2 ()
{
  QOpenGLBuffer * o = new QOpenGLBuffer ( (QOpenGLBuffer::Type) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QOpenGLBuffer(const QOpenGLBuffer & other)
*/
void QOpenGLBuffer_new3 ()
{
  QOpenGLBuffer * o = new QOpenGLBuffer ( *PQOPENGLBUFFER(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QOpenGLBuffer()
//[2]QOpenGLBuffer(QOpenGLBuffer::Type type)
//[3]QOpenGLBuffer(const QOpenGLBuffer & other)

HB_FUNC_STATIC( QOPENGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLBuffer_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLBuffer_new2();
  }
  else if( ISNUMPAR(1) && ISQOPENGLBUFFER(1) )
  {
    QOpenGLBuffer_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLBUFFER_DELETE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

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
void allocate(const void * data, int count)
*/
void QOpenGLBuffer_allocate1 ()
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->allocate ( (const void *) hb_parptr(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void allocate(int count)
*/
void QOpenGLBuffer_allocate2 ()
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->allocate ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void allocate(const void * data, int count)
//[2]void allocate(int count)

HB_FUNC_STATIC( QOPENGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    QOpenGLBuffer_allocate1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLBuffer_allocate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool bind()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_BIND )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->bind () );
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
GLuint bufferId() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_BUFFERID )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->bufferId () );
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
bool create()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_CREATE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->create () );
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
void destroy()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_DESTROY )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->destroy ();
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
bool isCreated() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_ISCREATED )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCreated () );
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
void * map(QOpenGLBuffer::Access access)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_MAP )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      hb_retptr( (void *) obj->map ( (QOpenGLBuffer::Access) hb_parni(1) ) );
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
bool read(int offset, void * data, int count)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_READ )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->read ( PINT(1), (void *) hb_parptr(2), PINT(3) ) );
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
void release()
*/
void QOpenGLBuffer_release1 ()
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->release ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void release(QOpenGLBuffer::Type type)
*/
void QOpenGLBuffer_release2 ()
{

      QOpenGLBuffer::release ( (QOpenGLBuffer::Type) hb_parni(1) );

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void release()
//[2]void release(QOpenGLBuffer::Type type)

HB_FUNC_STATIC( QOPENGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLBuffer_release1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLBuffer_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUsagePattern(QOpenGLBuffer::UsagePattern value)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_SETUSAGEPATTERN )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setUsagePattern ( (QOpenGLBuffer::UsagePattern) hb_parni(1) );
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
int size() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_SIZE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->size () );
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
QOpenGLBuffer::Type type() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_TYPE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool unmap()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_UNMAP )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->unmap () );
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
QOpenGLBuffer::UsagePattern usagePattern() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_USAGEPATTERN )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->usagePattern () );
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
void write(int offset, const void * data, int count)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_WRITE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
    {
#endif
      obj->write ( PINT(1), (const void *) hb_parptr(2), PINT(3) );
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

#pragma ENDDUMP
