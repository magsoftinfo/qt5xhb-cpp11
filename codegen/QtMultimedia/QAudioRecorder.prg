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

$beginClassFrom=QMediaRecorder

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioRecorder(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QAudioRecorder()
$deleteMethod

%%
%% Q_PROPERTY(QString audioInput READ audioInput WRITE setAudioInput NOTIFY audioInputChanged)
%%

$prototype=QString audioInput() const
$method=|QString|audioInput|

$prototype=void setAudioInput(const QString & name)
$slotMethod=|void|setAudioInput|const QString &

%%
%%
%%

$prototype=QString audioInputDescription(const QString & name) const
$method=|QString|audioInputDescription|const QString &

$prototype=QStringList audioInputs() const
$method=|QStringList|audioInputs|

$prototype=QString defaultAudioInput() const
$method=|QString|defaultAudioInput|

%%
%% SIGNALS
%%

$prototype=void audioInputChanged( const QString & name )
$signalMethod=|void|audioInputChanged|const QString &

$prototype=void availableAudioInputsChanged()
$signalMethod=|void|availableAudioInputsChanged|

#pragma ENDDUMP
