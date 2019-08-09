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

$beginClassFrom=Qt3DRender::QGeometryRenderer

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPlaneMesh(Qt3DCore::QNode *parent = nullptr)

$prototype=~QPlaneMesh()
$deleteMethod

%%
%% Q_PROPERTY(float width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototype=float width() const
$prototype=void setWidth(float width) [slot]

%%
%% Q_PROPERTY(float height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototype=float height() const
$prototype=void setHeight(float height) [slot]

%%
%% Q_PROPERTY(QSize meshResolution READ meshResolution WRITE setMeshResolution NOTIFY meshResolutionChanged)
%%

$prototype=QSize meshResolution() const
$prototype=void setMeshResolution(const QSize &resolution) [slot]

%%
%% Q_PROPERTY(bool mirrored READ mirrored WRITE setMirrored NOTIFY mirroredChanged REVISION 9)
%%

$prototype=bool mirrored() const
$prototype=void setMirrored(bool mirrored) [slot]

%%
%%
%%

$prototype=void setInstanceCount(int instanceCount) [private]
$prototype=void setVertexCount(int vertexCount) [private]
$prototype=void setIndexOffset(int indexOffset) [private]
$prototype=void setFirstInstance(int firstInstance) [private]
$prototype=void setRestartIndexValue(int index) [private]
$prototype=void setPrimitiveRestartEnabled(bool enabled) [private]
$prototype=void setGeometry(Qt3DRender::QGeometry *geometry) [private]
$prototype=void setPrimitiveType(PrimitiveType primitiveType) [private]

%%
%% SIGNALS
%%

$prototype=void meshResolutionChanged(const QSize &meshResolution)
$prototype=void widthChanged(float width)
$prototype=void heightChanged(float height)
$prototype=void mirroredChanged(bool mirrored)

#pragma ENDDUMP