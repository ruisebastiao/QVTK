#include "quickVtkCylinderSource.hpp"

namespace quick {
    namespace Vtk {

        //Qml::Register::Class<CylinderSource> CylinderSource::Register(true);

        CylinderSource::CylinderSource() : PolyDataAlgorithm(vtkSmartPointer<vtkCylinderSource>::New()) {
            this->m_vtkObject = vtkCylinderSource::SafeDownCast(Algorithm::getVtkObject());

            this->m_center = new Math::Vector3([this](){
                this->m_vtkObject->SetCenter(this->m_center->getValues().data());
                this->update();
            });
        }

        auto CylinderSource::getCenter() -> Math::Vector3* {
            return this->m_center;
        }

        auto CylinderSource::setHeight(qreal height) -> void {
            this->m_vtkObject->SetHeight(height);
            emit this->heightChanged();
            this->update();
        }

        auto CylinderSource::getHeight() -> qreal {
            return this->m_vtkObject->GetHeight();
        }

        auto CylinderSource::setRadius(qreal radius) -> void {
            this->m_vtkObject->SetRadius(radius);
            emit this->radiusChanged();
            this->update();
        }

        auto CylinderSource::getRadius() -> qreal {
            return this->m_vtkObject->GetRadius();
        }

        auto CylinderSource::setResolution(int resolution) -> void {
            this->m_vtkObject->SetResolution(resolution);
            emit this->resolutionChanged();
            this->update();
        }

        auto CylinderSource::getResolution() -> int {
            return this->m_vtkObject->GetResolution();
        }

        auto CylinderSource::setCapping(bool capping) -> void {
            this->m_vtkObject->SetCapping(capping);
            emit this->cappingChanged();
            this->update();
        }

        auto CylinderSource::getCapping() -> bool {
            return this->m_vtkObject->GetCapping();
        }
    }
}
