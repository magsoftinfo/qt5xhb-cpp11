/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTHELP_H
#define QT5XHB_MACROS_QTHELP_H

#define ISQCOMPRESSEDHELPINFO(n)                            _qt5xhb_isObjectDerivedFrom(n,"QCompressedHelpInfo")
#define ISQHELPCONTENTITEM(n)                               _qt5xhb_isObjectDerivedFrom(n,"QHelpContentItem")
#define ISQHELPCONTENTMODEL(n)                              _qt5xhb_isObjectDerivedFrom(n,"QHelpContentModel")
#define ISQHELPCONTENTWIDGET(n)                             _qt5xhb_isObjectDerivedFrom(n,"QHelpContentWidget")
#define ISQHELPENGINE(n)                                    _qt5xhb_isObjectDerivedFrom(n,"QHelpEngine")
#define ISQHELPENGINECORE(n)                                _qt5xhb_isObjectDerivedFrom(n,"QHelpEngineCore")
#define ISQHELPINDEXMODEL(n)                                _qt5xhb_isObjectDerivedFrom(n,"QHelpIndexModel")
#define ISQHELPINDEXWIDGET(n)                               _qt5xhb_isObjectDerivedFrom(n,"QHelpIndexWidget")
#define ISQHELPSEARCHENGINE(n)                              _qt5xhb_isObjectDerivedFrom(n,"QHelpSearchEngine")
#define ISQHELPSEARCHQUERY(n)                               _qt5xhb_isObjectDerivedFrom(n,"QHelpSearchQuery")
#define ISQHELPSEARCHQUERYWIDGET(n)                         _qt5xhb_isObjectDerivedFrom(n,"QHelpSearchQueryWidget")
#define ISQHELPSEARCHRESULTWIDGET(n)                        _qt5xhb_isObjectDerivedFrom(n,"QHelpSearchResultWidget")

#define PQCOMPRESSEDHELPINFO(n)                             (QCompressedHelpInfo *) _qt5xhb_itemGetPtr(n)
#define PQHELPCONTENTITEM(n)                                (QHelpContentItem *) _qt5xhb_itemGetPtr(n)
#define PQHELPCONTENTMODEL(n)                               (QHelpContentModel *) _qt5xhb_itemGetPtr(n)
#define PQHELPCONTENTWIDGET(n)                              (QHelpContentWidget *) _qt5xhb_itemGetPtr(n)
#define PQHELPENGINE(n)                                     (QHelpEngine *) _qt5xhb_itemGetPtr(n)
#define PQHELPENGINECORE(n)                                 (QHelpEngineCore *) _qt5xhb_itemGetPtr(n)
#define PQHELPINDEXMODEL(n)                                 (QHelpIndexModel *) _qt5xhb_itemGetPtr(n)
#define PQHELPINDEXWIDGET(n)                                (QHelpIndexWidget *) _qt5xhb_itemGetPtr(n)
#define PQHELPSEARCHENGINE(n)                               (QHelpSearchEngine *) _qt5xhb_itemGetPtr(n)
#define PQHELPSEARCHQUERY(n)                                (QHelpSearchQuery *) _qt5xhb_itemGetPtr(n)
#define PQHELPSEARCHQUERYWIDGET(n)                          (QHelpSearchQueryWidget *) _qt5xhb_itemGetPtr(n)
#define PQHELPSEARCHRESULTWIDGET(n)                         (QHelpSearchResultWidget *) _qt5xhb_itemGetPtr(n)

#define OPQCOMPRESSEDHELPINFO(n,v)                          ISNIL(n)? v : (QCompressedHelpInfo *) _qt5xhb_itemGetPtr(n)
#define OPQHELPCONTENTITEM(n,v)                             ISNIL(n)? v : (QHelpContentItem *) _qt5xhb_itemGetPtr(n)
#define OPQHELPCONTENTMODEL(n,v)                            ISNIL(n)? v : (QHelpContentModel *) _qt5xhb_itemGetPtr(n)
#define OPQHELPCONTENTWIDGET(n,v)                           ISNIL(n)? v : (QHelpContentWidget *) _qt5xhb_itemGetPtr(n)
#define OPQHELPENGINE(n,v)                                  ISNIL(n)? v : (QHelpEngine *) _qt5xhb_itemGetPtr(n)
#define OPQHELPENGINECORE(n,v)                              ISNIL(n)? v : (QHelpEngineCore *) _qt5xhb_itemGetPtr(n)
#define OPQHELPINDEXMODEL(n,v)                              ISNIL(n)? v : (QHelpIndexModel *) _qt5xhb_itemGetPtr(n)
#define OPQHELPINDEXWIDGET(n,v)                             ISNIL(n)? v : (QHelpIndexWidget *) _qt5xhb_itemGetPtr(n)
#define OPQHELPSEARCHENGINE(n,v)                            ISNIL(n)? v : (QHelpSearchEngine *) _qt5xhb_itemGetPtr(n)
#define OPQHELPSEARCHQUERY(n,v)                             ISNIL(n)? v : (QHelpSearchQuery *) _qt5xhb_itemGetPtr(n)
#define OPQHELPSEARCHQUERYWIDGET(n,v)                       ISNIL(n)? v : (QHelpSearchQueryWidget *) _qt5xhb_itemGetPtr(n)
#define OPQHELPSEARCHRESULTWIDGET(n,v)                      ISNIL(n)? v : (QHelpSearchResultWidget *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTHELP_H */
