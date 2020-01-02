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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtMultimedia/QMediaService>

$prototype=QMediaObject(QObject *parent, QMediaService *service) [protected]

$prototype=QMediaObject(QMediaObjectPrivate &dd, QObject *parent, QMediaService *service) [protected]

$prototype=~QMediaObject()
$deleteMethod

%%
%% Q_PROPERTY(int notifyInterval READ notifyInterval WRITE setNotifyInterval NOTIFY notifyIntervalChanged)
%%

$prototype=int notifyInterval() const
$method=|int|notifyInterval|

$prototype=void setNotifyInterval(int milliSeconds)
$method=|void|setNotifyInterval|int

%%
%%
%%

$prototype=virtual QMultimedia::AvailabilityStatus availability() const
$virtualMethod=|QMultimedia::AvailabilityStatus|availability|

$prototype=QStringList availableMetaData() const
$method=|QStringList|availableMetaData|

$prototype=virtual bool bind(QObject * object)
$virtualMethod=|bool|bind|QObject *

$prototype=virtual bool isAvailable() const
$virtualMethod=|bool|isAvailable|

$prototype=bool isMetaDataAvailable() const
$method=|bool|isMetaDataAvailable|

$prototype=QVariant metaData(const QString & key) const
$method=|QVariant|metaData|const QString &

$prototype=virtual QMediaService * service() const
$virtualMethod=|QMediaService *|service|

$prototype=virtual void unbind(QObject * object)
$virtualMethod=|void|unbind|QObject *

$prototype=void addPropertyWatch(QByteArray const &name) [protected]

$prototype=void removePropertyWatch(QByteArray const &name) [protected]

$prototype=void setupControls() [private]

%%
%% SIGNALS
%%

$prototype=void availabilityChanged( bool available )
$signalMethod=|void|availabilityChanged,availabilityChanged1,QOverload<bool>|bool

$prototype=void availabilityChanged( QMultimedia::AvailabilityStatus availability )
$signalMethod=|void|availabilityChanged,availabilityChanged2,QOverload<QMultimedia::AvailabilityStatus>|QMultimedia::AvailabilityStatus

$prototype=void metaDataAvailableChanged( bool available )
$signalMethod=|void|metaDataAvailableChanged|bool

$prototype=void metaDataChanged()
$signalMethod=|void|metaDataChanged,metaDataChanged1,QOverload<>|

$prototype=void metaDataChanged( const QString & key, const QVariant & value )
$signalMethod=|void|metaDataChanged,metaDataChanged2,QOverload<const QString & COMMA const QVariant &>|const QString &,const QVariant &

$prototype=void notifyIntervalChanged( int milliseconds )
$signalMethod=|void|notifyIntervalChanged|int

#pragma ENDDUMP
