TEMPLATE = lib
TARGET = qvtkmodule
QT += qml quick widgets
CONFIG += plugin


DEFINES += QVTK_LIB

uri = qvtk


RESOURCES += \
    src/qvtk.qrc
INCLUDEPATH += $$PWD/src

INCLUDEPATH += $$PWD/src/Math

INCLUDEPATH += $$PWD/src/Utils

INCLUDEPATH += $$PWD/src/Vtk/Internal
INCLUDEPATH += $$PWD/src/Vtk/Wrapper

#INCLUDEPATH += $$PWD/Vtk/internal


include($$PROJECT_PATH/module.pri)

include(vtk.pri)


!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$OUT_PWD/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qml/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

HEADERS += \
    src/Math/quickMathVector2.hpp \
    src/Math/quickMathVector3.hpp \
    src/Utils/quickIO.hpp \
    src/Vtk/Internal/quickVtkFboOffscreenWindow.hpp \
    src/Vtk/Internal/quickVtkFboRenderer.hpp \
    src/Vtk/Internal/quickVtkGenericInteractor.hpp \
    src/Vtk/Internal/quickVtkOFFReader.hpp \
    src/Vtk/Internal/quickVtkViewer.hpp \
    src/Vtk/Internal/quickVtkWin32Interactor.hpp \
    src/Vtk/Internal/vtkOFFReader.h \
    src/Vtk/Wrapper/quickVtkAbstractMapper.hpp \
    src/Vtk/Wrapper/quickVtkAbstractMapper3D.hpp \
    src/Vtk/Wrapper/quickVtkAbstractPolyDataReader.hpp \
    src/Vtk/Wrapper/quickVtkAbstractVolumeMapper.hpp \
    src/Vtk/Wrapper/quickVtkAbstractWidget.hpp \
    src/Vtk/Wrapper/quickVtkActor.hpp \
    src/Vtk/Wrapper/quickVtkActor2D.hpp \
    src/Vtk/Wrapper/quickVtkAdaptiveSubdivisionFilter.hpp \
    src/Vtk/Wrapper/quickVtkAlgorithm.hpp \
    src/Vtk/Wrapper/quickVtkApproximatingSubdivisionFilter.hpp \
    src/Vtk/Wrapper/quickVtkArcSource.hpp \
    src/Vtk/Wrapper/quickVtkArrowSource.hpp \
    src/Vtk/Wrapper/quickVtkBooleanOperationPolyDataFilter.hpp \
    src/Vtk/Wrapper/quickVtkBoxWidget2.hpp \
    src/Vtk/Wrapper/quickVtkButterflySubdivisionFilter.hpp \
    src/Vtk/Wrapper/quickVtkColorTransferFunction.hpp \
    src/Vtk/Wrapper/quickVtkCone.hpp \
    src/Vtk/Wrapper/quickVtkConeSource.hpp \
    src/Vtk/Wrapper/quickVtkCutter.hpp \
    src/Vtk/Wrapper/quickVtkCylinderSource.hpp \
    src/Vtk/Wrapper/quickVtkDICOMImageReader.hpp \
    src/Vtk/Wrapper/quickVtkDataReader.hpp \
    src/Vtk/Wrapper/quickVtkDataSetAlgorithm.hpp \
    src/Vtk/Wrapper/quickVtkDecimatePro.hpp \
    src/Vtk/Wrapper/quickVtkDensifyPolyData.hpp \
    src/Vtk/Wrapper/quickVtkDiskSource.hpp \
    src/Vtk/Wrapper/quickVtkEllipseArcSource.hpp \
    src/Vtk/Wrapper/quickVtkExtractEdges.hpp \
    src/Vtk/Wrapper/quickVtkExtractSurface.hpp \
    src/Vtk/Wrapper/quickVtkGPUVolumeRayCastMapper.hpp \
    src/Vtk/Wrapper/quickVtkGlyph3D.hpp \
    src/Vtk/Wrapper/quickVtkHedgeHog.hpp \
    src/Vtk/Wrapper/quickVtkImageAlgorithm.hpp \
    src/Vtk/Wrapper/quickVtkImageDataGeometryFilter.hpp \
    src/Vtk/Wrapper/quickVtkImageLaplacian.hpp \
    src/Vtk/Wrapper/quickVtkImageMapper.hpp \
    src/Vtk/Wrapper/quickVtkImageReader2.hpp \
    src/Vtk/Wrapper/quickVtkImplicitFunction.hpp \
    src/Vtk/Wrapper/quickVtkInterpolatingSubdivisionFilter.hpp \
    src/Vtk/Wrapper/quickVtkLinearExtrusionFilter.hpp \
    src/Vtk/Wrapper/quickVtkLinearSubdivisionFilter.hpp \
    src/Vtk/Wrapper/quickVtkLoopSubdivisionFilter.hpp \
    src/Vtk/Wrapper/quickVtkMapper.hpp \
    src/Vtk/Wrapper/quickVtkMapper2D.hpp \
    src/Vtk/Wrapper/quickVtkMinimalStandardRandomSequence.hpp \
    src/Vtk/Wrapper/quickVtkOBJReader.hpp \
    src/Vtk/Wrapper/quickVtkObject.hpp \
    src/Vtk/Wrapper/quickVtkPLYReader.hpp \
    src/Vtk/Wrapper/quickVtkPNGReader.hpp \
    src/Vtk/Wrapper/quickVtkPerlinNoise.hpp \
    src/Vtk/Wrapper/quickVtkPiecewiseFunction.hpp \
    src/Vtk/Wrapper/quickVtkPlane.hpp \
    src/Vtk/Wrapper/quickVtkPlatonicSolidSource.hpp \
    src/Vtk/Wrapper/quickVtkPointSetAlgorithm.hpp \
    src/Vtk/Wrapper/quickVtkPointSource.hpp \
    src/Vtk/Wrapper/quickVtkPolyDataAlgorithm.hpp \
    src/Vtk/Wrapper/quickVtkPolyDataMapper.hpp \
    src/Vtk/Wrapper/quickVtkPolyDataNormals.hpp \
    src/Vtk/Wrapper/quickVtkProp.hpp \
    src/Vtk/Wrapper/quickVtkProp3D.hpp \
    src/Vtk/Wrapper/quickVtkProperty.hpp \
    src/Vtk/Wrapper/quickVtkProperty2D.hpp \
    src/Vtk/Wrapper/quickVtkRandomSequence.hpp \
    src/Vtk/Wrapper/quickVtkReverseSense.hpp \
    src/Vtk/Wrapper/quickVtkRibbonFilter.hpp \
    src/Vtk/Wrapper/quickVtkRotationalExtrusionFilter.hpp \
    src/Vtk/Wrapper/quickVtkSTLReader.hpp \
    src/Vtk/Wrapper/quickVtkSectorSource.hpp \
    src/Vtk/Wrapper/quickVtkShrinkPolyData.hpp \
    src/Vtk/Wrapper/quickVtkSmartVolumeMapper.hpp \
    src/Vtk/Wrapper/quickVtkSmoothPolyDataFilter.hpp \
    src/Vtk/Wrapper/quickVtkSphere.hpp \
    src/Vtk/Wrapper/quickVtkSphereSource.hpp \
    src/Vtk/Wrapper/quickVtkStripper.hpp \
    src/Vtk/Wrapper/quickVtkStructuredPointsReader.hpp \
    src/Vtk/Wrapper/quickVtkSuperquadricSource.hpp \
    src/Vtk/Wrapper/quickVtkTextSource.hpp \
    src/Vtk/Wrapper/quickVtkTexture.hpp \
    src/Vtk/Wrapper/quickVtkTextureMapToCylinder.hpp \
    src/Vtk/Wrapper/quickVtkThreadedImageAlgorithm.hpp \
    src/Vtk/Wrapper/quickVtkTriangleFilter.hpp \
    src/Vtk/Wrapper/quickVtkTubeFilter.hpp \
    src/Vtk/Wrapper/quickVtkVectorText.hpp \
    src/Vtk/Wrapper/quickVtkVertexGlyphFilter.hpp \
    src/Vtk/Wrapper/quickVtkVolume.hpp \
    src/Vtk/Wrapper/quickVtkVolumeMapper.hpp \
    src/Vtk/Wrapper/quickVtkVolumeProperty.hpp \
    src/Vtk/Wrapper/quickVtkWarpLens.hpp \
    src/Vtk/Wrapper/quickVtkWarpScalar.hpp \
    src/Vtk/Wrapper/quickVtkWarpTo.hpp \
    src/qvtk_plugin.h

SOURCES += \
    src/Math/quickMathVector2.cpp \
    src/Math/quickMathVector3.cpp \
    src/Utils/quickIO.cpp \
    src/Vtk/Internal/quickVtkFboOffscreenWindow.cpp \
    src/Vtk/Internal/quickVtkFboRenderer.cpp \
    src/Vtk/Internal/quickVtkGenericInteractor.cpp \
    src/Vtk/Internal/quickVtkOFFReader.cpp \
    src/Vtk/Internal/quickVtkViewer.cpp \
    src/Vtk/Internal/quickVtkWin32Interactor.cpp \
    src/Vtk/Internal/vtkOFFReader.cpp \
    src/Vtk/Wrapper/quickVtkAbstractMapper.cpp \
    src/Vtk/Wrapper/quickVtkAbstractMapper3D.cpp \
    src/Vtk/Wrapper/quickVtkAbstractPolyDataReader.cpp \
    src/Vtk/Wrapper/quickVtkAbstractVolumeMapper.cpp \
    src/Vtk/Wrapper/quickVtkAbstractWidget.cpp \
    src/Vtk/Wrapper/quickVtkActor.cpp \
    src/Vtk/Wrapper/quickVtkActor2D.cpp \
    src/Vtk/Wrapper/quickVtkAdaptiveSubdivisionFilter.cpp \
    src/Vtk/Wrapper/quickVtkAlgorithm.cpp \
    src/Vtk/Wrapper/quickVtkApproximatingSubdivisionFilter.cpp \
    src/Vtk/Wrapper/quickVtkArcSource.cpp \
    src/Vtk/Wrapper/quickVtkArrowSource.cpp \
    src/Vtk/Wrapper/quickVtkBooleanOperationPolyDataFilter.cpp \
    src/Vtk/Wrapper/quickVtkBoxWidget2.cpp \
    src/Vtk/Wrapper/quickVtkButterflySubdivisionFilter.cpp \
    src/Vtk/Wrapper/quickVtkColorTransferFunction.cpp \
    src/Vtk/Wrapper/quickVtkCone.cpp \
    src/Vtk/Wrapper/quickVtkConeSource.cpp \
    src/Vtk/Wrapper/quickVtkCutter.cpp \
    src/Vtk/Wrapper/quickVtkCylinderSource.cpp \
    src/Vtk/Wrapper/quickVtkDICOMImageReader.cpp \
    src/Vtk/Wrapper/quickVtkDataReader.cpp \
    src/Vtk/Wrapper/quickVtkDataSetAlgorithm.cpp \
    src/Vtk/Wrapper/quickVtkDecimatePro.cpp \
    src/Vtk/Wrapper/quickVtkDensifyPolyData.cpp \
    src/Vtk/Wrapper/quickVtkDiskSource.cpp \
    src/Vtk/Wrapper/quickVtkEllipseArcSource.cpp \
    src/Vtk/Wrapper/quickVtkExtractEdges.cpp \
    src/Vtk/Wrapper/quickVtkExtractSurface.cpp \
    src/Vtk/Wrapper/quickVtkGPUVolumeRayCastMapper.cpp \
    src/Vtk/Wrapper/quickVtkGlyph3D.cpp \
    src/Vtk/Wrapper/quickVtkHedgeHog.cpp \
    src/Vtk/Wrapper/quickVtkImageAlgorithm.cpp \
    src/Vtk/Wrapper/quickVtkImageDataGeometryFilter.cpp \
    src/Vtk/Wrapper/quickVtkImageLaplacian.cpp \
    src/Vtk/Wrapper/quickVtkImageMapper.cpp \
    src/Vtk/Wrapper/quickVtkImageReader2.cpp \
    src/Vtk/Wrapper/quickVtkImplicitFunction.cpp \
    src/Vtk/Wrapper/quickVtkInterpolatingSubdivisionFilter.cpp \
    src/Vtk/Wrapper/quickVtkLinearExtrusionFilter.cpp \
    src/Vtk/Wrapper/quickVtkLinearSubdivisionFilter.cpp \
    src/Vtk/Wrapper/quickVtkLoopSubdivisionFilter.cpp \
    src/Vtk/Wrapper/quickVtkMapper.cpp \
    src/Vtk/Wrapper/quickVtkMapper2D.cpp \
    src/Vtk/Wrapper/quickVtkMinimalStandardRandomSequence.cpp \
    src/Vtk/Wrapper/quickVtkOBJReader.cpp \
    src/Vtk/Wrapper/quickVtkObject.cpp \
    src/Vtk/Wrapper/quickVtkPLYReader.cpp \
    src/Vtk/Wrapper/quickVtkPNGReader.cpp \
    src/Vtk/Wrapper/quickVtkPerlinNoise.cpp \
    src/Vtk/Wrapper/quickVtkPiecewiseFunction.cpp \
    src/Vtk/Wrapper/quickVtkPlane.cpp \
    src/Vtk/Wrapper/quickVtkPlatonicSolidSource.cpp \
    src/Vtk/Wrapper/quickVtkPointSetAlgorithm.cpp \
    src/Vtk/Wrapper/quickVtkPointSource.cpp \
    src/Vtk/Wrapper/quickVtkPolyDataAlgorithm.cpp \
    src/Vtk/Wrapper/quickVtkPolyDataMapper.cpp \
    src/Vtk/Wrapper/quickVtkPolyDataNormals.cpp \
    src/Vtk/Wrapper/quickVtkProp.cpp \
    src/Vtk/Wrapper/quickVtkProp3D.cpp \
    src/Vtk/Wrapper/quickVtkProperty.cpp \
    src/Vtk/Wrapper/quickVtkProperty2D.cpp \
    src/Vtk/Wrapper/quickVtkRandomSequence.cpp \
    src/Vtk/Wrapper/quickVtkReverseSense.cpp \
    src/Vtk/Wrapper/quickVtkRibbonFilter.cpp \
    src/Vtk/Wrapper/quickVtkRotationalExtrusionFilter.cpp \
    src/Vtk/Wrapper/quickVtkSTLReader.cpp \
    src/Vtk/Wrapper/quickVtkSectorSource.cpp \
    src/Vtk/Wrapper/quickVtkShrinkPolyData.cpp \
    src/Vtk/Wrapper/quickVtkSmartVolumeMapper.cpp \
    src/Vtk/Wrapper/quickVtkSmoothPolyDataFilter.cpp \
    src/Vtk/Wrapper/quickVtkSphere.cpp \
    src/Vtk/Wrapper/quickVtkSphereSource.cpp \
    src/Vtk/Wrapper/quickVtkStripper.cpp \
    src/Vtk/Wrapper/quickVtkStructuredPointsReader.cpp \
    src/Vtk/Wrapper/quickVtkSuperquadricSource.cpp \
    src/Vtk/Wrapper/quickVtkTextSource.cpp \
    src/Vtk/Wrapper/quickVtkTexture.cpp \
    src/Vtk/Wrapper/quickVtkTextureMapToCylinder.cpp \
    src/Vtk/Wrapper/quickVtkThreadedImageAlgorithm.cpp \
    src/Vtk/Wrapper/quickVtkTriangleFilter.cpp \
    src/Vtk/Wrapper/quickVtkTubeFilter.cpp \
    src/Vtk/Wrapper/quickVtkVectorText.cpp \
    src/Vtk/Wrapper/quickVtkVertexGlyphFilter.cpp \
    src/Vtk/Wrapper/quickVtkVolume.cpp \
    src/Vtk/Wrapper/quickVtkVolumeMapper.cpp \
    src/Vtk/Wrapper/quickVtkVolumeProperty.cpp \
    src/Vtk/Wrapper/quickVtkWarpLens.cpp \
    src/Vtk/Wrapper/quickVtkWarpScalar.cpp \
    src/Vtk/Wrapper/quickVtkWarpTo.cpp \
    src/qvtk_plugin.cpp

