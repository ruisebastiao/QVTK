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

#include "qvtk_plugin.h"

#include <qqml.h>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <QQuickWindow>
#include <quickVtkObject.hpp>
#include <quickVtkAlgorithm.hpp>
#include <quickMathVector2.hpp>
#include <quickVtkAbstractWidget.hpp>
#include <quickVtkImplicitFunction.hpp>
#include <quickMathVector3.hpp>
#include <quickVtkColorTransferFunction.hpp>
#include <quickVtkPiecewiseFunction.hpp>
#include <quickVtkProperty2D.hpp>
#include <quickVtkViewer.hpp>
#include <quickVtkVolumeProperty.hpp>
#include <quickVtkImageAlgorithm.hpp>
#include <quickVtkImageLaplacian.hpp>
#include <quickVtkOBJReader.hpp>
#include <quickVtkPNGReader.hpp>
#include <quickVtkSTLReader.hpp>
#include <quickVtkStructuredPointsReader.hpp>
#include <quickVtkAbstractMapper.hpp>
#include <quickVtkAbstractVolumeMapper.hpp>
#include <quickVtkBoxWidget2.hpp>
#include <quickVtkDataSetAlgorithm.hpp>
#include <quickVtkMapper2D.hpp>
#include <quickVtkPointSetAlgorithm.hpp>
#include <quickVtkPolyDataMapper.hpp>
#include <quickVtkExtractEdges.hpp>
#include <quickVtkImageDataGeometryFilter.hpp>
#include <quickVtkLinearSubdivisionFilter.hpp>
#include <quickVtkLoopSubdivisionFilter.hpp>
#include <quickVtkMinimalStandardRandomSequence.hpp>
#include <quickVtkTextureMapToCylinder.hpp>
#include <quickVtkVertexGlyphFilter.hpp>
#include <quickVtkVectorText.hpp>
#include <quickVtkOFFReader.hpp>
#include <quickVtkCone.hpp>
#include <quickVtkPlane.hpp>
#include <quickVtkReverseSense.hpp>
#include <quickVtkShrinkPolyData.hpp>
#include <vtkDICOMImageReader.h>
#include <quickVtkSphere.hpp>
#include <quickVtkWarpScalar.hpp>
#include <quickVtkHedgeHog.hpp>
#include <quickVtkTriangleFilter.hpp>
#include <quickVtkActor.hpp>
#include <quickVtkImageMapper.hpp>
#include <quickVtkPerlinNoise.hpp>
#include <quickVtkPlatonicSolidSource.hpp>
#include <quickVtkWarpTo.hpp>
#include <quickVtkDiskSource.hpp>
#include <quickVtkArrowSource.hpp>
#include <quickVtkBooleanOperationPolyDataFilter.hpp>
#include <quickVtkConeSource.hpp>
#include <quickVtkExtractSurface.hpp>
#include <quickVtkLinearExtrusionFilter.hpp>
#include <quickVtkPointSource.hpp>
#include <quickVtkRotationalExtrusionFilter.hpp>
#include <quickVtkWarpLens.hpp>
#include <quickVtkArcSource.hpp>
#include <quickVtkDecimatePro.hpp>
#include <quickVtkPolyDataNormals.hpp>
#include <quickVtkRibbonFilter.hpp>
#include <quickVtkSectorSource.hpp>
#include <quickVtkSphereSource.hpp>
#include <quickVtkStripper.hpp>
#include <quickVtkGPUVolumeRayCastMapper.hpp>
#include <quickVtkSuperquadricSource.hpp>
#include <quickVtkGlyph3D.hpp>
#include <quickVtkTubeFilter.hpp>
#include <quickVtkTexture.hpp>
#include <quickVtkProperty.hpp>
#include <quickVtkVolume.hpp>
#include <quickVtkActor2D.hpp>
#include <quickVtkCylinderSource.hpp>


using namespace quick;
using namespace Vtk;
using namespace Math;

#define vtkRenderingCore_AUTOINIT 2(vtkRenderingOpenGL2, vtkInteractionStyle)

void QVTKPlugin::registerTypes(const char *uri){
    // @uri modules.automationmodule



    // Register C++ uncreatable types
    qmlRegisterUncreatableType<Object>(uri, 1, 0, "Object","Cannot be created");
    qmlRegisterUncreatableType<Algorithm>(uri, 1, 0, "Algorithm","Cannot be created");
    qmlRegisterUncreatableType<Vector2>(uri, 1, 0, "Vector2","Cannot be created");
    qmlRegisterUncreatableType<Vector3>(uri, 1, 0, "Vector3","Cannot be created");
    qmlRegisterUncreatableType<ColorTransferFunction>(uri, 1, 0, "ColorTransferFunction","Cannot be created");
    qmlRegisterUncreatableType<PiecewiseFunction>(uri, 1, 0, "PiecewiseFunction","Cannot be created");
    qmlRegisterUncreatableType<Prop>(uri, 1, 0, "Prop","Cannot be created");
    qmlRegisterUncreatableType<Property2D>(uri, 1, 0, "Property2D","Cannot be created");
    qmlRegisterUncreatableType<AbstractWidget>(uri, 1, 0, "AbstractWidget","Cannot be created");
    qmlRegisterUncreatableType<ImplicitFunction>(uri, 1, 0, "ImplicitFunction","Cannot be created");
    qmlRegisterUncreatableType<VolumeProperty>(uri, 1, 0, "VolumeProperty","Cannot be created");
    qmlRegisterUncreatableType<ImageAlgorithm>(uri, 1, 0, "ImageAlgorithm","Cannot be created");
    qmlRegisterUncreatableType<AbstractMapper>(uri, 1, 0, "AbstractMapper","Cannot be created");
    qmlRegisterUncreatableType<AbstractVolumeMapper>(uri, 1, 0, "AbstractVolumeMapper","Cannot be created");
    qmlRegisterUncreatableType<DataSetAlgorithm>(uri, 1, 0, "DataSetAlgorithm","Cannot be created");
    qmlRegisterUncreatableType<Mapper2D>(uri, 1, 0, "Mapper2D","Cannot be created");
    qmlRegisterUncreatableType<PointSetAlgorithm>(uri, 1, 0, "PointSetAlgorithm","Cannot be created");
    qmlRegisterUncreatableType<PolyDataAlgorithm>(uri, 1, 0, "PolyDataAlgorithm","Cannot be created");
    qmlRegisterUncreatableType<ThreadedImageAlgorithm>(uri, 1, 0, "ThreadedImageAlgorithm","Cannot be created");
    qmlRegisterUncreatableType<AbstractPolyDataReader>(uri, 1, 0, "AbstractPolyDataReader","Cannot be created");
    qmlRegisterUncreatableType<ApproximatingSubdivisionFilter>(uri, 1, 0, "ApproximatingSubdivisionFilter","Cannot be created");
    qmlRegisterUncreatableType<DataReader>(uri, 1, 0, "DataReader","Cannot be created");
    qmlRegisterUncreatableType<ImageReader2>(uri, 1, 0, "ImageReader2","Cannot be created");
    qmlRegisterUncreatableType<InterpolatingSubdivisionFilter>(uri, 1, 0, "InterpolatingSubdivisionFilter","Cannot be created");
    qmlRegisterUncreatableType<RandomSequence>(uri, 1, 0, "RandomSequence","Cannot be created");
    qmlRegisterUncreatableType<Mapper>(uri, 1, 0, "Mapper","Cannot be created");
    qmlRegisterUncreatableType<Prop3D>(uri, 1, 0, "Prop3D","Cannot be created");
    qmlRegisterUncreatableType<Property>(uri, 1, 0, "Property","Cannot be created");
    qmlRegisterUncreatableType<Texture>(uri, 1, 0, "Texture","Cannot be created");




    // Register QML creatable types
    //    qmlRegisterType<Meshes>(uri, 1, 0, "Meshes");
    qmlRegisterType<Viewer>(uri, 1, 0, "Viewer");
    qmlRegisterType<ImageLaplacian>(uri, 1, 0, "ImageLaplacian");
    qmlRegisterType<OBJReader>(uri, 1, 0, "OBJReader");
    qmlRegisterType<PNGReader>(uri, 1, 0, "PNGReader");
    qmlRegisterType<STLReader>(uri, 1, 0, "STLReader");
    qmlRegisterType<StructuredPointsReader>(uri, 1, 0, "StructuredPointsReader");
    qmlRegisterType<BoxWidget2>(uri, 1, 0, "BoxWidget2");
    qmlRegisterType<ExtractEdges>(uri, 1, 0, "ExtractEdges");
    qmlRegisterType<ImageDataGeometryFilter>(uri, 1, 0, "ImageDataGeometryFilter");
    qmlRegisterType<LinearSubdivisionFilter>(uri, 1, 0, "LinearSubdivisionFilter");
    qmlRegisterType<LoopSubdivisionFilter>(uri, 1, 0, "LoopSubdivisionFilter");
    qmlRegisterType<MinimalStandardRandomSequence>(uri, 1, 0, "MinimalStandardRandomSequence");
    qmlRegisterType<TextureMapToCylinder>(uri, 1, 0, "TextureMapToCylinder");
    qmlRegisterType<VertexGlyphFilter>(uri, 1, 0, "VertexGlyphFilter");
    qmlRegisterType<VectorText>(uri, 1, 0, "VectorText");
    qmlRegisterType<OFFReader>(uri, 1, 0, "OFFReader");
    qmlRegisterType<Cone>(uri, 1, 0, "Cone");
    qmlRegisterType<Plane>(uri, 1, 0, "Plane");
    qmlRegisterType<ReverseSense>(uri, 1, 0, "ReverseSense");
    qmlRegisterType<ShrinkPolyData>(uri, 1, 0, "ShrinkPolyData");
    qmlRegisterType<Sphere>(uri, 1, 0, "Sphere");
    qmlRegisterType<TriangleFilter>(uri, 1, 0, "TriangleFilter");
    qmlRegisterType<WarpScalar>(uri, 1, 0, "WarpScalar");
    qmlRegisterType<Actor>(uri, 1, 0, "Actor");
    qmlRegisterType<HedgeHog>(uri, 1, 0, "HedgeHog");
    qmlRegisterType<ImageMapper>(uri, 1, 0, "ImageMapper");
    qmlRegisterType<PerlinNoise>(uri, 1, 0, "PerlinNoise");
    qmlRegisterType<PlatonicSolidSource>(uri, 1, 0, "PlatonicSolidSource");
    qmlRegisterType<Volume>(uri, 1, 0, "Volume");
    qmlRegisterType<WarpTo>(uri, 1, 0, "WarpTo");
    qmlRegisterType<DiskSource>(uri, 1, 0, "DiskSource");
    qmlRegisterType<ArrowSource>(uri, 1, 0, "ArrowSource");
    qmlRegisterType<Actor2D>(uri, 1, 0, "Actor2D");
    qmlRegisterType<BooleanOperationPolyDataFilter>(uri, 1, 0, "BooleanOperationPolyDataFilter");
    qmlRegisterType<ConeSource>(uri, 1, 0, "ConeSource");
    qmlRegisterType<ExtractSurface>(uri, 1, 0, "ExtractSurface");
    qmlRegisterType<LinearExtrusionFilter>(uri, 1, 0, "LinearExtrusionFilter");
    qmlRegisterType<PointSource>(uri, 1, 0, "PointSource");
    qmlRegisterType<RotationalExtrusionFilter>(uri, 1, 0, "RotationalExtrusionFilter");
    qmlRegisterType<WarpLens>(uri, 1, 0, "WarpLens");
    qmlRegisterType<ArcSource>(uri, 1, 0, "ArcSource");
    qmlRegisterType<DecimatePro>(uri, 1, 0, "DecimatePro");
    qmlRegisterType<PolyDataNormals>(uri, 1, 0, "PolyDataNormals");
    qmlRegisterType<RibbonFilter>(uri, 1, 0, "RibbonFilter");
    qmlRegisterType<SectorSource>(uri, 1, 0, "SectorSource");
    qmlRegisterType<SphereSource>(uri, 1, 0, "SphereSource");
    qmlRegisterType<Stripper>(uri, 1, 0, "Stripper");
    qmlRegisterType<GPUVolumeRayCastMapper>(uri, 1, 0, "GPUVolumeRayCastMapper");
    qmlRegisterType<SuperquadricSource>(uri, 1, 0, "SuperquadricSource");
    qmlRegisterType<Glyph3D>(uri, 1, 0, "Glyph3D");
    qmlRegisterType<TubeFilter>(uri, 1, 0, "TubeFilter");
    qmlRegisterType<PolyDataMapper>(uri, 1, 0, "PolyDataMapper");
    qmlRegisterType<CylinderSource>(uri, 1, 0, "CylinderSource");


}

QVTKPlugin::QVTKPlugin()
{

}


