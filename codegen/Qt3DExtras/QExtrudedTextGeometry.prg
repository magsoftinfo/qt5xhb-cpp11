%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DRender::QGeometry

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QExtrudedTextGeometry(Qt3DCore::QNode *parent = nullptr)

$prototype=explicit QExtrudedTextGeometry(QExtrudedTextGeometryPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QExtrudedTextGeometry()
$deleteMethod

%%
%% Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
%%

$prototype=QString text() const

$prototype=void setText(const QString &text) [slot]

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const

$prototype=void setFont(const QFont &font) [slot]

%%
%% Q_PROPERTY(float extrusionLength READ extrusionLength WRITE setDepth NOTIFY depthChanged)
%%

$prototype=float extrusionLength() const

$prototype=void setDepth(float extrusionLength) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *positionAttribute READ positionAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *positionAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *normalAttribute READ normalAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *normalAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *indexAttribute READ indexAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *indexAttribute() const

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void textChanged(const QString &text)
$signalMethod=|void|textChanged|const QString &

$prototype=void fontChanged(const QFont &font)
$signalMethod=|void|fontChanged|const QFont &

$prototype=void depthChanged(float extrusionLength)
$signalMethod=|void|depthChanged|float

#pragma ENDDUMP