#pragma once

#include "quickVtkObject.hpp"

#include <vtkSmartPointer.h>
#include <vtkAbstractWidget.h>

namespace quick {
    namespace Vtk {

        class AbstractWidget : public Object {
            Q_OBJECT
            Q_PROPERTY(bool enabled READ getEnabled WRITE setEnabled NOTIFY enabledChanged);
        private:
            bool m_enabled = true;
            vtkSmartPointer<vtkAbstractWidget> m_vtkObject = nullptr;
        public:
            AbstractWidget() = delete;
            AbstractWidget(vtkSmartPointer<vtkAbstractWidget>);
            auto setEnabled(bool) -> void;
            auto getEnabled() -> bool;
            auto getVtkObject() -> vtkSmartPointer<vtkAbstractWidget>;
        signals:
            void enabledChanged();
        };
    }
}
