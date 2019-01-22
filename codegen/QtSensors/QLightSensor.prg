%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLIGHTREADING
#endif

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QLightSensor(QObject *parent = nullptr)
$constructor=5,1,0|new|QObject *=nullptr

$deleteMethod=5,1,0

$prototype=QLightReading *reading() const
$method=5,1,0|QLightReading *|reading|

$prototype=qreal fieldOfView() const
$method=5,1,0|qreal|fieldOfView|

$prototype=void setFieldOfView(qreal fieldOfView)
$method=5,1,0|void|setFieldOfView|qreal

%%
%% SIGNALS
%%

$prototype=void fieldOfViewChanged( qreal fieldOfView )
$signalMethod=5,1,0|void|fieldOfViewChanged|qreal

#pragma ENDDUMP
