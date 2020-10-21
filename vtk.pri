vtk_release=-8.2

win32{
INCLUDEPATH += $$PROJECT_PATH/external/submodules/VTK/install/include/vtk$${vtk_release}



include($$PROJECT_PATH/functions.pri)


#vtk dependencies

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersPoints$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonCore$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonDataModel$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonExecutionModel$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submoduRles/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersCore$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersExtraction$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersGeneral$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersGeometry$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersModeling$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersPoints$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersSources$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersTexture$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkImagingGeneral$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkInteractionWidgets$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkInteractionStyle$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersGeometry$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkIOGeometry$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkIOImage$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkIOLegacy$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkIOPLY$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingExternal$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingFreeType$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingGL2PSOpenGL2$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingOpenGL2$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingVolume$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingVolumeOpenGL2$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonCore$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonMath$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonMisc$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtksys$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonTransforms$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkIOCore$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingCore$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkImagingMath$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkImagingCore$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtklz4$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtklzma$${vtk_release})
                $$PROJECT_PATH/external/
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkzlib$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkdoubleconversion$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkglew$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonSystem$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkgl2ps$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkpng$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersHybrid$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkImagingHybrid$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonComputationalGeometry$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkImagingSources$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtktiff$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkmetaio$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkFiltersStatistics$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkCommonColor$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkRenderingAnnotation$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkImagingColor$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkjpeg$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkDICOMParser$${vtk_release})
linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkImagingFourier$${vtk_release})

linkExternalLib($$PROJECT_PATH/external/submodules/VTK/install/lib,$$PROJECT_PATH/external/submodules/VTK/install/bin,vtkfreetype$${vtk_release})

}
