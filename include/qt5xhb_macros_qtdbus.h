/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTDBUS_H
#define QT5XHB_MACROS_QTDBUS_H

#define ISQDBUSABSTRACTADAPTOR( n )                         Qt5xHb::isObjectDerivedFrom( n, "QDBusAbstractAdaptor" )
#define ISQDBUSABSTRACTINTERFACE( n )                       Qt5xHb::isObjectDerivedFrom( n, "QDBusAbstractInterface" )
#define ISQDBUSABSTRACTINTERFACEBASE( n )                   Qt5xHb::isObjectDerivedFrom( n, "QDBusAbstractInterfaceBase" )
#define ISQDBUSARGUMENT( n )                                Qt5xHb::isObjectDerivedFrom( n, "QDBusArgument" )
#define ISQDBUSCONNECTION( n )                              Qt5xHb::isObjectDerivedFrom( n, "QDBusConnection" )
#define ISQDBUSCONNECTIONINTERFACE( n )                     Qt5xHb::isObjectDerivedFrom( n, "QDBusConnectionInterface" )
#define ISQDBUSCONTEXT( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QDBusContext" )
#define ISQDBUSERROR( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QDBusError" )
#define ISQDBUSINTERFACE( n )                               Qt5xHb::isObjectDerivedFrom( n, "QDBusInterface" )
#define ISQDBUSMESSAGE( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QDBusMessage" )
#define ISQDBUSMETATYPE( n )                                Qt5xHb::isObjectDerivedFrom( n, "QDBusMetaType" )
#define ISQDBUSOBJECTPATH( n )                              Qt5xHb::isObjectDerivedFrom( n, "QDBusObjectPath" )
#define ISQDBUSPENDINGCALL( n )                             Qt5xHb::isObjectDerivedFrom( n, "QDBusPendingCall" )
#define ISQDBUSPENDINGCALLWATCHER( n )                      Qt5xHb::isObjectDerivedFrom( n, "QDBusPendingCallWatcher" )
#define ISQDBUSPENDINGREPLYDATA( n )                        Qt5xHb::isObjectDerivedFrom( n, "QDBusPendingReplyData" )
#define ISQDBUSSERVER( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QDBusServer" )
#define ISQDBUSSERVICEWATCHER( n )                          Qt5xHb::isObjectDerivedFrom( n, "QDBusServiceWatcher" )
#define ISQDBUSSIGNATURE( n )                               Qt5xHb::isObjectDerivedFrom( n, "QDBusSignature" )
#define ISQDBUSUNIXFILEDESCRIPTOR( n )                      Qt5xHb::isObjectDerivedFrom( n, "QDBusUnixFileDescriptor" )
#define ISQDBUSVIRTUALOBJECT( n )                           Qt5xHb::isObjectDerivedFrom( n, "QDBusVirtualObject" )

#define PQDBUSABSTRACTADAPTOR( n )                          static_cast< QDBusAbstractAdaptor * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSABSTRACTINTERFACE( n )                        static_cast< QDBusAbstractInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSABSTRACTINTERFACEBASE( n )                    static_cast< QDBusAbstractInterfaceBase * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSARGUMENT( n )                                 static_cast< QDBusArgument * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSCONNECTION( n )                               static_cast< QDBusConnection * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSCONNECTIONINTERFACE( n )                      static_cast< QDBusConnectionInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSCONTEXT( n )                                  static_cast< QDBusContext * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSERROR( n )                                    static_cast< QDBusError * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSINTERFACE( n )                                static_cast< QDBusInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSMESSAGE( n )                                  static_cast< QDBusMessage * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSMETATYPE( n )                                 static_cast< QDBusMetaType * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSOBJECTPATH( n )                               static_cast< QDBusObjectPath * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSPENDINGCALL( n )                              static_cast< QDBusPendingCall * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSPENDINGCALLWATCHER( n )                       static_cast< QDBusPendingCallWatcher * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSPENDINGREPLYDATA( n )                         static_cast< QDBusPendingReplyData * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSSERVER( n )                                   static_cast< QDBusServer * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSSERVICEWATCHER( n )                           static_cast< QDBusServiceWatcher * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSSIGNATURE( n )                                static_cast< QDBusSignature * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSUNIXFILEDESCRIPTOR( n )                       static_cast< QDBusUnixFileDescriptor * >( Qt5xHb::itemGetPtr( n ) )
#define PQDBUSVIRTUALOBJECT( n )                            static_cast< QDBusVirtualObject * >( Qt5xHb::itemGetPtr( n ) )

#define OPQDBUSABSTRACTADAPTOR( n, v )                      HB_ISNIL( n )? v : static_cast< QDBusAbstractAdaptor * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSABSTRACTINTERFACE( n, v )                    HB_ISNIL( n )? v : static_cast< QDBusAbstractInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSABSTRACTINTERFACEBASE( n, v )                HB_ISNIL( n )? v : static_cast< QDBusAbstractInterfaceBase * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSARGUMENT( n, v )                             HB_ISNIL( n )? v : static_cast< QDBusArgument * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSCONNECTION( n, v )                           HB_ISNIL( n )? v : static_cast< QDBusConnection * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSCONNECTIONINTERFACE( n, v )                  HB_ISNIL( n )? v : static_cast< QDBusConnectionInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSCONTEXT( n, v )                              HB_ISNIL( n )? v : static_cast< QDBusContext * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSERROR( n, v )                                HB_ISNIL( n )? v : static_cast< QDBusError * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSINTERFACE( n, v )                            HB_ISNIL( n )? v : static_cast< QDBusInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSMESSAGE( n, v )                              HB_ISNIL( n )? v : static_cast< QDBusMessage * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSMETATYPE( n, v )                             HB_ISNIL( n )? v : static_cast< QDBusMetaType * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSOBJECTPATH( n, v )                           HB_ISNIL( n )? v : static_cast< QDBusObjectPath * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSPENDINGCALL( n, v )                          HB_ISNIL( n )? v : static_cast< QDBusPendingCall * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSPENDINGCALLWATCHER( n, v )                   HB_ISNIL( n )? v : static_cast< QDBusPendingCallWatcher * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSPENDINGREPLYDATA( n, v )                     HB_ISNIL( n )? v : static_cast< QDBusPendingReplyData * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSSERVER( n, v )                               HB_ISNIL( n )? v : static_cast< QDBusServer * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSSERVICEWATCHER( n, v )                       HB_ISNIL( n )? v : static_cast< QDBusServiceWatcher * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSSIGNATURE( n, v )                            HB_ISNIL( n )? v : static_cast< QDBusSignature * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSUNIXFILEDESCRIPTOR( n, v )                   HB_ISNIL( n )? v : static_cast< QDBusUnixFileDescriptor * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDBUSVIRTUALOBJECT( n, v )                        HB_ISNIL( n )? v : static_cast< QDBusVirtualObject * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTDBUS_H */
