%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QScxmlTableData()
$deleteMethod

$prototype=virtual QString string(QScxmlExecutableContent::StringId id) const = 0
$prototype=virtual QScxmlExecutableContent::InstructionId *instructions() const = 0
$prototype=virtual QScxmlExecutableContent::EvaluatorInfo evaluatorInfo(QScxmlExecutableContent::EvaluatorId evaluatorId) const = 0
$prototype=virtual QScxmlExecutableContent::AssignmentInfo assignmentInfo(QScxmlExecutableContent::EvaluatorId assignmentId) const = 0
$prototype=virtual QScxmlExecutableContent::ForeachInfo foreachInfo(QScxmlExecutableContent::EvaluatorId foreachId) const = 0
$prototype=virtual QScxmlExecutableContent::StringId *dataNames(int *count) const = 0
$prototype=virtual QScxmlExecutableContent::ContainerId initialSetup() const = 0
$prototype=virtual QString name() const = 0
$prototype=virtual const qint32 *stateMachineTable() const = 0
$prototype=virtual QScxmlInvokableServiceFactory *serviceFactory(int id) const = 0

$extraMethods

#pragma ENDDUMP