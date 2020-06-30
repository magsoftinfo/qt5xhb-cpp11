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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QString managerName() const

$prototypeV2=int managerVersion() const

$prototypeV2=QGeoRouteReply * calculateRoute( const QGeoRouteRequest & request )

$prototypeV2=QGeoRouteReply * updateRoute( const QGeoRoute & route, const QGeoCoordinate & position )

$prototypeV2=QGeoRouteRequest::TravelModes supportedTravelModes() const

$prototypeV2=QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const

$prototypeV2=QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const

$prototypeV2=QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const

$prototypeV2=QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const

$prototypeV2=QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=QLocale locale() const

$prototypeV2=void setMeasurementSystem( QLocale::MeasurementSystem system )

$prototypeV2=QLocale::MeasurementSystem measurementSystem() const

%%
%% SIGNALS
%%

$prototype=void finished( QGeoRouteReply * reply )
$signalMethod=|void|finished|QGeoRouteReply *

$prototype=void error( QGeoRouteReply * reply, QGeoRouteReply::Error error, QString errorString = QString() )
$signalMethod=|void|error|QGeoRouteReply *,QGeoRouteReply::Error,QString

#pragma ENDDUMP
