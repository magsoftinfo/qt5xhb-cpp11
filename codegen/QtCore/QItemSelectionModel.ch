%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QItemSelectionModel::SelectionFlag
flags QItemSelectionModel::SelectionFlags
*/
#define QItemSelectionModel_NoUpdate                                 0x0000
#define QItemSelectionModel_Clear                                    0x0001
#define QItemSelectionModel_Select                                   0x0002
#define QItemSelectionModel_Deselect                                 0x0004
#define QItemSelectionModel_Toggle                                   0x0008
#define QItemSelectionModel_Current                                  0x0010
#define QItemSelectionModel_Rows                                     0x0020
#define QItemSelectionModel_Columns                                  0x0040
#define QItemSelectionModel_SelectCurrent                            hb_bitor(QItemSelectionModel_Select,QItemSelectionModel_Current)
#define QItemSelectionModel_ToggleCurrent                            hb_bitor(QItemSelectionModel_Toggle,QItemSelectionModel_Current)
#define QItemSelectionModel_ClearAndSelect                           hb_bitor(QItemSelectionModel_Clear,QItemSelectionModel_Select)
