%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTapSensor(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QTapReading * reading() const

$prototypeV2=bool returnDoubleTapEvents() const

$prototype=void setReturnDoubleTapEvents(bool returnDoubleTapEvents)
$method=|void|setReturnDoubleTapEvents|bool

%%
%% SIGNALS
%%

$prototype=void returnDoubleTapEventsChanged( bool returnDoubleTapEvents )
$signalMethod=|void|returnDoubleTapEventsChanged|bool

#pragma ENDDUMP
