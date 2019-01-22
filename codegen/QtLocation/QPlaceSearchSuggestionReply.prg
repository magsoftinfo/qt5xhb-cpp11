%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceReply

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QPlaceSearchSuggestionReply(QObject *parent = nullptr)
$constructor=5,4,0|new|QObject *=nullptr

$deleteMethod=5,4,0

$prototype=QStringList suggestions() const
$method=5,4,0|QStringList|suggestions|

$prototype=Type type() const
$method=5,4,0|QPlaceReply::Type|type|

#pragma ENDDUMP
