/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMODBUSDEVICE_CH
#define QMODBUSDEVICE_CH

/*
enum QModbusDevice::Error
*/
#define QModbusDevice_NoError                                        0
#define QModbusDevice_ReadError                                      1
#define QModbusDevice_WriteError                                     2
#define QModbusDevice_ConnectionError                                3
#define QModbusDevice_ConfigurationError                             4
#define QModbusDevice_TimeoutError                                   5
#define QModbusDevice_ProtocolError                                  6
#define QModbusDevice_ReplyAbortedError                              7
#define QModbusDevice_UnknownError                                   8

/*
enum QModbusDevice::State
*/
#define QModbusDevice_UnconnectedState                               0
#define QModbusDevice_ConnectingState                                1
#define QModbusDevice_ConnectedState                                 2
#define QModbusDevice_ClosingState                                   3

/*
enum QModbusDevice::ConnectionParameter
*/
#define QModbusDevice_SerialPortNameParameter                        0
#define QModbusDevice_SerialParityParameter                          1
#define QModbusDevice_SerialBaudRateParameter                        2
#define QModbusDevice_SerialDataBitsParameter                        3
#define QModbusDevice_SerialStopBitsParameter                        4
#define QModbusDevice_NetworkPortParameter                           5
#define QModbusDevice_NetworkAddressParameter                        6
#define QModbusDevice_UserParameter                                  0x100

#endif /* QMODBUSDEVICE_CH */
