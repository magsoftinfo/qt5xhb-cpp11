%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include <Qt>

#ifndef __XHARBOUR__
#include <QtMultimediaVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimediaVersion>
#endif

HB_FUNC( QTMULTIMEDIA_VERSION_STR )
{
  hb_retc( (const char *) QTMULTIMEDIA_VERSION_STR );
}

HB_FUNC( QTMULTIMEDIA_VERSION )
{
  hb_retni( QTMULTIMEDIA_VERSION );
}
