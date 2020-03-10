#include "vtkAutoInit.h"
VTK_MODULE_INIT(vtkRenderingOpenGL2); // VTK was built with vtkRenderingOpenGL2
VTK_MODULE_INIT(vtkInteractionStyle);

#pragma once

#include <QQmlListProperty>

#include "quickVtkMapper.hpp"
#include "quickVtkAlgorithm.hpp"

#include <vtkPolyDataMapper.h>

namespace quick {
    namespace Vtk {

        class PolyDataAlgorithm;

        class PolyDataMapper : public Mapper {
            Q_OBJECT
        private:
            // static //Qml::Register::Class<PolyDataMapper> Register;
        public:
            PolyDataMapper();
        };
    }
}
