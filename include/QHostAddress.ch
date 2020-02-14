/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHOSTADDRESS_CH
#define QHOSTADDRESS_CH

/*
enum QHostAddress::SpecialAddress
*/
#define QHostAddress_Null                                            0
#define QHostAddress_Broadcast                                       1
#define QHostAddress_LocalHost                                       2
#define QHostAddress_LocalHostIPv6                                   3
#define QHostAddress_Any                                             4
#define QHostAddress_AnyIPv6                                         5
#define QHostAddress_AnyIPv4                                         6

/*
enum QHostAddress::ConversionModeFlag
flags QHostAddress::ConversionMode
*/
#define QHostAddress_ConvertV4MappedToIPv4                           1
#define QHostAddress_ConvertV4CompatToIPv4                           2
#define QHostAddress_ConvertUnspecifiedAddress                       4
#define QHostAddress_ConvertLocalHost                                8
#define QHostAddress_TolerantConversion                              0xff
#define QHostAddress_StrictConversion                                0

#endif /* QHOSTADDRESS_CH */
