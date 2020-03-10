#include "quickVtkColorTransferFunction.hpp"

namespace quick {
    namespace Vtk {

        //Qml::Register::UncreatableClass<ColorTransferFunction> ColorTransferFunction::Register(true);

        ColorTransferFunction::ColorTransferFunction(vtkSmartPointer<vtkColorTransferFunction> vtkObject, cb_t&& callback) : m_vtkObject(vtkObject), m_callback(callback) {
        }

        void ColorTransferFunction::clear() {
            this->m_colors.clear();
            this->m_values.clear();

            emit this->sizeChanged();

            this->m_vtkObject->RemoveAllPoints();
            this->update();
        }

        void ColorTransferFunction::add(const QColor& color, double value) {
            this->m_colors.append(color);
            this->m_values.append(value);

            emit this->sizeChanged();

            this->m_vtkObject->AddRGBPoint(value, color.redF(), color.greenF(), color.blueF());
            this->update();
        }

        double ColorTransferFunction::getValue(int i) {
            return i < this->m_values.length() && i >= 0 ? this->m_values.at(i) : 0;
        }

        QColor ColorTransferFunction::getColor(int i) {
            return i < this->m_colors.length() && i >= 0 ? QColor(this->m_colors.at(i)) : QColor("#ff00ff");
        }

        auto ColorTransferFunction::update() -> void {
            this->m_callback();
        }

        auto ColorTransferFunction::getValues() -> QList<double> {
            return this->m_values;
        }

        auto ColorTransferFunction::getColors() -> QList<QColor> {
            return this->m_colors;
        }

        auto ColorTransferFunction::setClamping(bool clamping) -> void {
            this->m_vtkObject->SetClamping(clamping);
            this->update();
        }

        auto ColorTransferFunction::getClamping() -> bool {
            return this->m_vtkObject->GetClamping();
        }

        auto ColorTransferFunction::getSize() -> int {
            return this->m_values.length();
        }
    }
}
