%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>

$deleteMethod

$prototypeV2=virtual QAction * preferredEditAction() const

$prototypeV2=virtual QList<QAction *> taskActions() const = 0

$extraMethods

#pragma ENDDUMP
