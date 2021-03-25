/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTTEXTTOSPEECH_H
#define QT5XHB_MACROS_QTTEXTTOSPEECH_H

#define ISQTEXTTOSPEECH( n )                                Qt5xHb::isObjectDerivedFrom( n, "QTextToSpeech" )
#define ISQTEXTTOSPEECHENGINE( n )                          Qt5xHb::isObjectDerivedFrom( n, "QTextToSpeechEngine" )
#define ISQTEXTTOSPEECHPLUGIN( n )                          Qt5xHb::isObjectDerivedFrom( n, "QTextToSpeechPlugin" )
#define ISQVOICE( n )                                       Qt5xHb::isObjectDerivedFrom( n, "QVoice" )

#define PQTEXTTOSPEECH( n )                                 static_cast< QTextToSpeech * >( Qt5xHb::itemGetPtr( n ) )
#define PQTEXTTOSPEECHENGINE( n )                           static_cast< QTextToSpeechEngine * >( Qt5xHb::itemGetPtr( n ) )
#define PQTEXTTOSPEECHPLUGIN( n )                           static_cast< QTextToSpeechPlugin * >( Qt5xHb::itemGetPtr( n ) )
#define PQVOICE( n )                                        static_cast< QVoice * >( Qt5xHb::itemGetPtr( n ) )

#define OPQTEXTTOSPEECH( n, v )                             HB_ISNIL( n )? v : static_cast< QTextToSpeech * >( Qt5xHb::itemGetPtr( n ) )
#define OPQTEXTTOSPEECHENGINE( n, v )                       HB_ISNIL( n )? v : static_cast< QTextToSpeechEngine * >( Qt5xHb::itemGetPtr( n ) )
#define OPQTEXTTOSPEECHPLUGIN( n, v )                       HB_ISNIL( n )? v : static_cast< QTextToSpeechPlugin * >( Qt5xHb::itemGetPtr( n ) )
#define OPQVOICE( n, v )                                    HB_ISNIL( n )? v : static_cast< QVoice * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTTEXTTOSPEECH_H */
