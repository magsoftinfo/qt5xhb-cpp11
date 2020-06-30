%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtLocation/QPlaceIcon>

$prototype=QPlaceSearchResult()
$internalConstructor=|new1|

$prototype=QPlaceSearchResult(const QPlaceSearchResult &other)
$internalConstructor=|new2|const QPlaceSearchResult &

/*
[1]QPlaceSearchResult()
[2]QPlaceSearchResult(const QPlaceSearchResult &other)
*/

HB_FUNC_STATIC( QPLACESEARCHRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSearchResult_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESEARCHRESULT(1) )
  {
    QPlaceSearchResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QPlaceSearchResult::SearchResultType type() const

$prototypeV2=QString title() const

$prototypeV2=void setTitle( const QString & title )

$prototypeV2=QPlaceIcon icon() const

$prototypeV2=void setIcon( const QPlaceIcon & icon )

$extraMethods

#pragma ENDDUMP
