#pragma once

#include "quickVtkPolyDataAlgorithm.hpp"

#include <vtkAbstractPolyDataReader.h>

namespace quick {
    namespace Vtk {

        class AbstractPolyDataReader : public PolyDataAlgorithm {
            Q_OBJECT
            Q_PROPERTY(QString fileName READ getFileName WRITE setFileName NOTIFY fileNameChanged);
        private:
            // static //Qml::Register::AbstractClass<AbstractPolyDataReader> Register;
            vtkSmartPointer<vtkAbstractPolyDataReader> m_vtkObject = nullptr;
            QString m_fileName;
        public:
            AbstractPolyDataReader(vtkSmartPointer<vtkAbstractPolyDataReader>);
            auto isValid() -> bool override;
            auto setFileName(const QString&) -> void;
            auto getFileName() -> QString;
        signals:
            void fileNameChanged();
        };
    }
}
