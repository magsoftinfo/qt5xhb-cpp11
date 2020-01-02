%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaNetworkAccessControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QMediaNetworkAccessControl()
$deleteMethod

$prototype=virtual QNetworkConfiguration currentConfiguration() const = 0
$virtualMethod=|QNetworkConfiguration|currentConfiguration|

$prototype=virtual void setConfigurations(const QList<QNetworkConfiguration> & configurations) = 0
$virtualMethod=|void|setConfigurations|const QList<QNetworkConfiguration> &

%%
%% SIGNALS
%%

$prototype=void configurationChanged( const QNetworkConfiguration & configuration )
$signalMethod=|void|configurationChanged|const QNetworkConfiguration &

#pragma ENDDUMP
