rem
rem Qt5xHb/C++11 - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para compila��o (Windows/CLANG/MSYS)
rem

rem
rem Utilize este .bat como modelo para compilar as bibliotecas para Windows
rem usando CLANG/MSYS, fazendo uma c�pia e ajustando os par�metros e caminhos.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instala��o do Qt Framework (use mingw32 ou mingw64).
set QTDIR=C:\msys64\mingw32

rem Pasta da instala��o do Harbour.
set HBDIR=C:\harbour

rem Pasta da instala��o do compilador C/C++.
set CPPDIR=%QTDIR%

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Define se � Harbour ou xHarbour (harbour/xharbour)
set HBCOMP=harbour

rem Define o compilador C++ (clang/clang64)
set QTCOMP=clang

rem Define a plataforma (windows)
set QTPLATFORM=windows

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
mingw32-make -f makefile_clang 1>%QTCOMP%_%QTPLATFORM%_%HBCOMP%-1.log 2>%QTCOMP%_%QTPLATFORM%_%HBCOMP%-2.log

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set HBCOMP=
set QTCOMP=
set QTPLATFORM=

pause
