/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractListModelV2.h"

/*
  m�todo construtor
*/
HAbstractListModelV2::HAbstractListModelV2( QObject * parent ) : QAbstractListModel( parent )
{
  m_rowCountBlock = nullptr;
  m_dataBlock = nullptr;
  m_headerDataBlock = nullptr;
  m_flagsBlock = nullptr;
  m_setDataBlock = nullptr;
}

HAbstractListModelV2::~HAbstractListModelV2()
{
  if( m_rowCountBlock != nullptr )
  {
    hb_itemRelease( m_rowCountBlock );
    m_rowCountBlock = nullptr;
  }

  if( m_dataBlock != nullptr )
  {
    hb_itemRelease( m_dataBlock );
    m_dataBlock = nullptr;
  }

  if( m_headerDataBlock != nullptr )
  {
    hb_itemRelease( m_headerDataBlock );
    m_headerDataBlock = nullptr;
  }

  if( m_flagsBlock != nullptr )
  {
    hb_itemRelease( m_flagsBlock );
    m_flagsBlock = nullptr;
  }

  if( m_setDataBlock != nullptr )
  {
    hb_itemRelease( m_setDataBlock );
    m_setDataBlock = nullptr;
  }
}

void HAbstractListModelV2::setRowCountCB( PHB_ITEM block )
{
  if( m_rowCountBlock != nullptr )
  {
    hb_itemRelease( m_rowCountBlock );
  }
  if( block != nullptr )
  {
    m_rowCountBlock = hb_itemNew( block );
  }
}

void HAbstractListModelV2::setDataCB( PHB_ITEM block )
{
  if( m_dataBlock != nullptr )
  {
    hb_itemRelease( m_dataBlock );
  }
  if( block != nullptr )
  {
    m_dataBlock = hb_itemNew( block );
  }
}

void HAbstractListModelV2::setHeaderDataCB( PHB_ITEM block )
{
  if( m_headerDataBlock != nullptr )
  {
    hb_itemRelease( m_headerDataBlock );
  }
  if( block != nullptr )
  {
    m_headerDataBlock = hb_itemNew( block );
  }
}

void HAbstractListModelV2::setFlagsCB( PHB_ITEM block )
{
  if( m_flagsBlock != nullptr )
  {
    hb_itemRelease( m_flagsBlock );
  }
  if( block != nullptr )
  {
    m_flagsBlock = hb_itemNew( block );
  }
}

void HAbstractListModelV2::setSetDataCB( PHB_ITEM block )
{
  if( m_setDataBlock != nullptr )
  {
    hb_itemRelease( m_setDataBlock );
  }
  if( block != nullptr )
  {
    m_setDataBlock = hb_itemNew( block );
  }
}

int HAbstractListModelV2::rowCount( const QModelIndex & parent ) const
{
  if( m_rowCountBlock != nullptr )
  {
    if( parent.isValid() )
    {
      return 0;
    }

    return hb_itemGetNI( hb_vmEvalBlockV( m_rowCountBlock, 0 ) );
  }

  return 0;
}

QVariant HAbstractListModelV2::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  if( m_dataBlock != nullptr )
  {
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( ( void * ) &index ); // TODO: C++ cast
    PHB_ITEM pRole = hb_itemPutNI( nullptr, role );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_dataBlock, 2, pIndex, pRole ) );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
    {
      void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
      data = *( static_cast< QVariant * >( ptr ) );
    }

    hb_itemRelease( pIndex );
    hb_itemRelease( pRole );
    hb_itemRelease( pRet );
  }

  return data;
}

QVariant HAbstractListModelV2::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  if( m_headerDataBlock != nullptr )
  {
    PHB_ITEM pSection = hb_itemPutNI( nullptr, section );
    PHB_ITEM pOrientation = hb_itemPutNI( nullptr, static_cast< int >( orientation ) );
    PHB_ITEM pRole = hb_itemPutNI( nullptr, role );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_headerDataBlock, 3, pSection, pOrientation, pRole ) );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
    {
      void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
      data = *( static_cast< QVariant * >( ptr ) );
    }

    hb_itemRelease( pSection );
    hb_itemRelease( pOrientation );
    hb_itemRelease( pRole );
    hb_itemRelease( pRet );
  }

  return data;
}

Qt::ItemFlags HAbstractListModelV2::flags( const QModelIndex &index ) const
{
  Qt::ItemFlags flags = Qt::ItemIsSelectable | Qt::ItemIsEnabled;

  if( m_flagsBlock != nullptr )
  {
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( ( void * ) &index ); // C++ cast

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_flagsBlock, 1, pIndex ) );

    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      flags = static_cast< Qt::ItemFlags >( hb_itemGetNI( pRet ) );
    }

    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }

  return flags;
}

bool HAbstractListModelV2::setData( const QModelIndex &index, const QVariant &value, int role )
{
  bool success = false;

  if( m_setDataBlock != nullptr )
  {
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( ( void * ) &index ); // TODO: C++ cast
    PHB_ITEM pValue = Qt5xHb::returnQVariantObject( ( void * ) &value ); // TODO: C++ cast
    PHB_ITEM pRole = hb_itemPutNI( nullptr, role );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_setDataBlock, 3, pIndex, pValue, pRole ) );

    if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      success = hb_itemGetL( pRet );
    }

    hb_itemRelease( pIndex );
    hb_itemRelease( pValue );
    hb_itemRelease( pRole );
    hb_itemRelease( pRet );
  }

  return success;
}

void HAbstractListModelV2::reloadData()
{
  // Notas da documenta��o do Qt:
  emit QAbstractItemModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  //emit QAbstractItemModel::layoutChanged();
  emit QAbstractItemModel::layoutChanged();
}
