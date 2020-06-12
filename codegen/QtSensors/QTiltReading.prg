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

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=qreal yRotation() const

$prototype=void setYRotation(qreal y)
$method=|void|setYRotation|qreal

$prototypeV2=qreal xRotation() const

$prototype=void setXRotation(qreal x)
$method=|void|setXRotation|qreal

#pragma ENDDUMP
