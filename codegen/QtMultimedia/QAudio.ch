%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QAudio::Error
*/
#define QAudio_NoError                                               0
#define QAudio_OpenError                                             1
#define QAudio_IOError                                               2
#define QAudio_UnderrunError                                         3
#define QAudio_FatalError                                            4

/*
enum QAudio::State
*/
#define QAudio_ActiveState                                           0
#define QAudio_SuspendedState                                        1
#define QAudio_StoppedState                                          2
#define QAudio_IdleState                                             3

/*
enum QAudio::Mode
*/
#define QAudio_AudioOutput                                           1
#define QAudio_AudioInput                                            0

/*
enum QAudio::Role
*/
#define QAudio_UnknownRole                                           0
#define QAudio_MusicRole                                             1
#define QAudio_VideoRole                                             2
#define QAudio_VoiceCommunicationRole                                3
#define QAudio_AlarmRole                                             4
#define QAudio_NotificationRole                                      5
#define QAudio_RingtoneRole                                          6
#define QAudio_AccessibilityRole                                     7
#define QAudio_SonificationRole                                      8
#define QAudio_GameRole                                              9

/*
enum QAudio::VolumeScale
*/
#define QAudio_LinearVolumeScale                                     0
#define QAudio_CubicVolumeScale                                      1
#define QAudio_LogarithmicVolumeScale                                2
#define QAudio_DecibelVolumeScale                                    3
