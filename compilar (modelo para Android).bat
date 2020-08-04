rem
rem Qt5xHb/C++11 - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para Android
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Define a plataforma.
set QTPLATFORM=android_armv7

rem Pasta da instala��o do Qt Framework, para a plataforma acima.
set QTDIR=C:\Qt\5.9.2\android_armv7

rem Pasta da instala��o do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instala��o do compilador C/C++.
rem set CPPDIR=C:\Qt\Tools\mingw492_32

rem --- configura��o do NDK ---

rem Pasta da instala��o do Android NDK.
set NDKDIR=C:\Android-ndk-r15

rem Defini��o do toolchain.
set NDKTOOLCHAIN=arm-linux-androideabi-4.9

rem Defini��o do prefixo do toolchain.
set NDKTOOLCHAINPREFIX=arm-linux-androideabi

rem Defini��o da vers�o do GCC.
set NDKGCCVER=4.9

rem Defini��o da vers�o da arquitetura.
set NDKGCCARCH=armeabi

rem Defini��o da API do Android.
set NDKAPIVER=19

rem Defini��o da arquitetura.
set NDKAPIARCH=arm

rem ---

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
rem set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Define se � Harbour ou xHarbour (harbour/xharbour).
set HBCOMP=harbour

rem Define se � MinGW ou MSVC (mingw/mingw64/msvc/msvc64).
set QTCOMP=mingw

rem Cria a pasta para as bibliotecas, caso n�o exista.
if not exist lib mkdir lib
if not exist lib\%QTCOMP% mkdir lib\%QTCOMP%
if not exist lib\%QTCOMP%\%QTPLATFORM% mkdir lib\%QTCOMP%\%QTPLATFORM%
if not exist lib\%QTCOMP%\%QTPLATFORM%\%HBCOMP% mkdir lib\%QTCOMP%\%QTPLATFORM%\%HBCOMP%

rem Cria a pasta para os objetos, caso n�o exista.
if not exist obj mkdir obj
if not exist obj\%QTCOMP% mkdir obj\%QTCOMP%
if not exist obj\%QTCOMP%\%QTPLATFORM% mkdir obj\%QTCOMP%\%QTPLATFORM%
if not exist obj\%QTCOMP%\%QTPLATFORM%\%HBCOMP% mkdir obj\%QTCOMP%\%QTPLATFORM%\%HBCOMP%

rem Compila as bibliotecas.
mingw32-make.exe -f makefile_android 1>%QTCOMP%_%QTPLATFORM%_%HBCOMP%-1.log 2>%QTCOMP%_%QTPLATFORM%_%HBCOMP%-2.log

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QTCOMP=
set QTPLATFORM=
set HBCOMP=

pause
