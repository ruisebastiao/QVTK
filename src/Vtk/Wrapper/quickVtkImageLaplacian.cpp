#include "quickVtkImageLaplacian.hpp"

namespace quick {
    namespace Vtk {

        //Qml::Register::Class<ImageLaplacian> ImageLaplacian::Register(true);

        ImageLaplacian::ImageLaplacian() : ThreadedImageAlgorithm(vtkSmartPointer<vtkImageLaplacian>::New()) {
        }
    }
}
