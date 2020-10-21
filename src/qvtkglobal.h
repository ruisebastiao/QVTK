/****************************************************************************
**
** Copyright (C) 2014-2018 Dinu SV.
** (contact: mail@dinusv.com)
** This file is part of Live CV Application.
**
** GNU Lesser General Public License Usage
** This file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPLv3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl.html.
**
****************************************************************************/

#ifndef QVTKGLOBAL_H
#define QVTKGLOBAL_H

#include <qglobal.h>

#ifndef QVTK_STATIC
#  ifdef QVTK_LIB
#    define QVTK_EXPORT Q_DECL_EXPORT
#  else
#    define QVTK_EXPORT Q_DECL_IMPORT
#  endif
#else
#  define QVTK_EXPORT
#endif

#endif // QVTKGLOBAL_H
