# enve - 2D animations software
# Copyright (C) 2016-2020 Maurycy Liebner

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#-------------------------------------------------
#
# Project created by QtCreator 2018-12-01T10:47:47
#
#-------------------------------------------------

# VERSION = 0.0.0

QT += opengl multimedia qml xml svg
LIBS += -lavutil -lavformat -lavcodec -lswscale -lswresample
CONFIG += c++14
TARGET = envecore
TEMPLATE = lib
DEFINES += CORE_LIBRARY
DEFINES += QT_NO_FOREACH

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Third-party dependencies
include(core.pri)

SOURCES += \
    Expressions/expression.cpp \
    Expressions/framebinding.cpp \
    Expressions/propertybinding.cpp \
    Animators/SculptPath/sculptbrush.cpp \
    Animators/SculptPath/sculptnode.cpp \
    Animators/SculptPath/sculptnodebase.cpp \
    Animators/SculptPath/sculptpath.cpp \
    Animators/SculptPath/sculptpathanimator.cpp \
    Animators/SculptPath/sculptpathcollection.cpp \
    Animators/SmartPath/listofnodes.cpp \
    Animators/SmartPath/smartpath.cpp \
    Animators/SmartPath/smartpathanimatoractions.cpp \
    Animators/brushsettingsanimator.cpp \
    Animators/clampedpoint.cpp \
    Animators/clampedvalue.cpp \
    Animators/coloranimator.cpp \
    Animators/complexkey.cpp \
    Animators/customproperties.cpp \
    Animators/eboxorsound.cpp \
    Animators/eeffect.cpp \
    Animators/gradient.cpp \
    Animators/gradientpoints.cpp \
    Animators/outlinesettingsanimator.cpp \
    Animators/overlappingkeylist.cpp \
    Animators/overlappingkeys.cpp \
    Animators/paintsettingsanimator.cpp \
    Animators/qcubicsegment1danimator.cpp \
    Animators/qrealsnapshot.cpp \
    Animators/qstringanimator.cpp \
    Animators/sceneboundgradient.cpp \
    Animators/staticcomplexanimator.cpp \
    Animators/texteffectcollection.cpp \
    BlendEffects/blendeffect.cpp \
    BlendEffects/blendeffectboxshadow.cpp \
    BlendEffects/blendeffectcollection.cpp \
    BlendEffects/moveblendeffect.cpp \
    BlendEffects/targetedblendeffect.cpp \
    Boxes/animationbox.cpp \
    Boxes/boundingbox.cpp \
    Boxes/boxrendercontainer.cpp \
    Boxes/boxrenderdata.cpp \
    Boxes/boxwithpatheffects.cpp \
    Boxes/canvasrenderdata.cpp \
    Boxes/circle.cpp \
    Boxes/containerbox.cpp \
    Boxes/ecustombox.cpp \
    Boxes/effectsrenderer.cpp \
    Boxes/effectsubtaskspawner.cpp \
    Boxes/frameremapping.cpp \
    Boxes/imagebox.cpp \
    Boxes/imagerenderdata.cpp \
    Boxes/imagesequencebox.cpp \
    Boxes/internallinkbox.cpp \
    Boxes/internallinkcanvas.cpp \
    Boxes/internallinkgroupbox.cpp \
    Boxes/layerboxrenderdata.cpp \
    Boxes/linkcanvasrenderdata.cpp \
    Boxes/paintbox.cpp \
    Boxes/pathbox.cpp \
    Boxes/pathboxrenderdata.cpp \
    Boxes/patheffectsmenu.cpp \
    Boxes/rectangle.cpp \
    Boxes/renderdatahandler.cpp \
    Boxes/sculptpathbox.cpp \
    Boxes/sculptpathboxrenderdata.cpp \
    Boxes/smartvectorpath.cpp \
    Boxes/svglinkbox.cpp \
    Boxes/textbox.cpp \
    Boxes/textboxrenderdata.cpp \
    Boxes/videobox.cpp \
    CacheHandlers/cachecontainer.cpp \
    CacheHandlers/hddcachablecachehandler.cpp \
    CacheHandlers/hddcachablecont.cpp \
    CacheHandlers/hddcachablerangecont.cpp \
    CacheHandlers/imagecachecontainer.cpp \
    CacheHandlers/imagedatahandler.cpp \
    CacheHandlers/samples.cpp \
    CacheHandlers/sceneframecontainer.cpp \
    CacheHandlers/soundcachecontainer.cpp \
    CacheHandlers/soundcachehandler.cpp \
    CacheHandlers/soundtmpfilehandlers.cpp \
    CacheHandlers/tmpdeleter.cpp \
    CacheHandlers/tmploader.cpp \
    CacheHandlers/tmpsaver.cpp \
    CacheHandlers/usedrange.cpp \
    Expressions/propertybindingbase.cpp \
    Expressions/propertybindingparser.cpp \
    Expressions/valuebinding.cpp \
    FileCacheHandlers/animationcachehandler.cpp \
    FileCacheHandlers/audiostreamsdata.cpp \
    FileCacheHandlers/filecachehandler.cpp \
    FileCacheHandlers/filedatacachehandler.cpp \
    FileCacheHandlers/filehandlerobjref.cpp \
    FileCacheHandlers/imagecachehandler.cpp \
    FileCacheHandlers/imagesequencecachehandler.cpp \
    FileCacheHandlers/soundreader.cpp \
    FileCacheHandlers/svgfilecachehandler.cpp \
    FileCacheHandlers/videocachehandler.cpp \
    FileCacheHandlers/videoframeloader.cpp \
    FileCacheHandlers/videostreamsdata.cpp \
    GUI/boxeslistactionbutton.cpp \
    GUI/coloranimatorbutton.cpp \
    GUI/dialogsinterface.cpp \
    GUI/edialogs.cpp \
    GUI/ewidgets.cpp \
    GUI/global.cpp \
    GUI/propertynamedialog.cpp \
    GUI/sizesetter.cpp \
    GUI/valueinput.cpp \
    MovablePoints/gradientpoint.cpp \
    MovablePoints/pathpivot.cpp \
    Ora/oracreator.cpp \
    Ora/oraimporter.cpp \
    Ora/oraparser.cpp \
    Paint/animatedsurface.cpp \
    Paint/autotiledsurface.cpp \
    Paint/autotilesdata.cpp \
    Paint/brushcontexedwrapper.cpp \
    Paint/brushescontext.cpp \
    Paint/brushstroke.cpp \
    Paint/brushstrokeset.cpp \
    Paint/colorconversions.cpp \
    Paint/drawableautotiledsurface.cpp \
    Paint/externalpaintapphandler.cpp \
    Paint/onionskin.cpp \
    Paint/painttarget.cpp \
    Paint/simplebrushwrapper.cpp \
    Paint/tile.cpp \
    Paint/tilebitmaps.cpp \
    Paint/undoabletile.cpp \
    PathEffects/custompatheffect.cpp \
    PathEffects/dashpatheffect.cpp \
    PathEffects/displacepatheffect.cpp \
    PathEffects/duplicatepatheffect.cpp \
    PathEffects/linespatheffect.cpp \
    PathEffects/patheffectcaller.cpp \
    PathEffects/patheffectcollection.cpp \
    PathEffects/patheffectstask.cpp \
    PathEffects/solidifypatheffect.cpp \
    PathEffects/spatialdisplacepatheffect.cpp \
    PathEffects/subdividepatheffect.cpp \
    PathEffects/subpatheffect.cpp \
    PathEffects/sumpatheffect.cpp \
    PathEffects/zigzagpatheffect.cpp \
    Private/Tasks/complextask.cpp \
    Private/Tasks/execcontroller.cpp \
    Private/Tasks/gputaskexecutor.cpp \
    Private/Tasks/offscreenqgl33c.cpp \
    Private/Tasks/taskexecutor.cpp \
    Private/Tasks/taskque.cpp \
    Private/Tasks/taskquehandler.cpp \
    Private/Tasks/taskscheduler.cpp \
    Private/document.cpp \
    Private/documentrw.cpp \
    Private/esettings.cpp \
    Private/memorystructs.cpp \
    Properties/boolpropertycontainer.cpp \
    Properties/boxtargetproperty.cpp \
    Properties/emimedata.cpp \
    RasterEffects/blureffect.cpp \
    RasterEffects/customrastereffect.cpp \
    RasterEffects/motionblureffect.cpp \
    RasterEffects/rastereffect.cpp \
    RasterEffects/rastereffectcaller.cpp \
    RasterEffects/rastereffectcollection.cpp \
    RasterEffects/rastereffectmenucreator.cpp \
    RasterEffects/shadoweffect.cpp \
    ReadWrite/basicreadwrite.cpp \
    ReadWrite/ereadstream.cpp \
    ReadWrite/ewritestream.cpp \
    ReadWrite/filefooter.cpp \
    Segments/fitcurves.cpp \
    Segments/smoothcurves.cpp \
    ShaderEffects/shadereffect.cpp \
    ShaderEffects/shadereffectcaller.cpp \
    ShaderEffects/shadereffectcreator.cpp \
    ShaderEffects/shadereffectjs.cpp \
    ShaderEffects/shadereffectprogram.cpp \
    ShaderEffects/shadervaluehandler.cpp \
    ShaderEffects/uniformspecifiercreator.cpp \
    Sound/eindependentsound.cpp \
    Sound/esound.cpp \
    Sound/esoundlink.cpp \
    Sound/esoundobjectbase.cpp \
    Sound/esoundsettings.cpp \
    Sound/evideosound.cpp \
    Sound/soundcomposition.cpp \
    Sound/soundmerger.cpp \
    Tasks/domeletask.cpp \
    Tasks/etask.cpp \
    Tasks/etaskbase.cpp \
    Tasks/updatable.cpp \
    Timeline/animationrect.cpp \
    Timeline/durationrectangle.cpp \
    Timeline/fixedlenanimationrect.cpp \
    action.cpp \
    actions.cpp \
    canvas.cpp \
    canvashandlesmartpath.cpp \
    canvasmouseevents.cpp \
    canvasmouseinteractions.cpp \
    canvasselectedboxesactions.cpp \
    canvasselectedpointsactions.cpp \
    clipboardcontainer.cpp \
    colorhelpers.cpp \
    colorsetting.cpp \
    conncontext.cpp \
    cpurendertools.cpp \
    drawpath.cpp \
    efiltersettings.cpp \
    etexture.cpp \
    etextureframebuffer.cpp \
    fileshandler.cpp \
    filesourcescache.cpp \
    gpurendertools.cpp \
    importhandler.cpp \
    kraimporter.cpp \
    matrixdecomposition.cpp \
    memorydatahandler.cpp \
    namefixer.cpp \
    paintsettings.cpp \
    paintsettingsapplier.cpp \
    pathoperations.cpp \
    randomgrid.cpp \
    simpletask.cpp \
    smartPointers/stdpointer.cpp \
    smartPointers/stdselfref.cpp \
    singlewidgettarget.cpp \
    Properties/property.cpp \
    Properties/comboboxproperty.cpp \
    Animators/complexanimator.cpp \
    Animators/animator.cpp \
    Animators/intanimator.cpp \
    Animators/key.cpp \
    Animators/boolanimator.cpp \
    svgexporter.cpp \
    svgexporthelpers.cpp \
    svgimporter.cpp \
    switchablecontext.cpp \
    swt_abstraction.cpp \
    swt_rulescollection.cpp \
    texteffect.cpp \
    texteffectcaller.cpp \
    transformvalues.cpp \
    undoredo.cpp \
    exceptions.cpp \
    glhelpers.cpp \
    skia/skimagecopy.cpp \
    skia/skqtconversions.cpp \
    pointhelpers.cpp \
    simplemath.cpp \
    Animators/qrealpoint.cpp \
    Animators/graphanimator.cpp \
    Animators/graphkey.cpp \
    Animators/interpolationkey.cpp \
    Animators/interpolationanimator.cpp \
    framerange.cpp \
    Segments/quadsegment.cpp \
    Segments/conicsegment.cpp \
    Segments/cubiclist.cpp \
    Segments/cubicnode.cpp \
    Segments/qcubicsegment2d.cpp \
    Segments/qcubicsegment1d.cpp \
    Animators/animatort.cpp \
    Animators/interpolatedanimator.cpp \
    Animators/steppedanimator.cpp \
    differsinterpolate.cpp \
    skia/skiahelpers.cpp \
    Animators/keyt.cpp \
    Animators/basedkeyt.cpp \
    Animators/graphkeyt.cpp \
    Animators/basedanimatort.cpp \
    Animators/graphanimatort.cpp \
    Animators/SmartPath/node.cpp \
    Animators/SmartPath/nodelist.cpp \
    Animators/SmartPath/smartpathanimator.cpp \
    Animators/interpolationanimatort.cpp \
    nodepointvalues.cpp \
    Animators/SmartPath/smartpathcollection.cpp \
    Animators/interpolationkeyt.cpp \
    Properties/boolproperty.cpp \
    PathEffects/patheffect.cpp \
    Animators/transformanimator.cpp \
    Animators/qrealanimator.cpp \
    Animators/qrealkey.cpp \
    Animators/qrealvalueeffect.cpp \
    Animators/qpointfanimator.cpp \
    MovablePoints/movablepoint.cpp \
    MovablePoints/nonanimatedmovablepoint.cpp \
    MovablePoints/animatedpoint.cpp \
    MovablePoints/boxpathpoint.cpp \
    MovablePoints/smartnodepoint.cpp \
    MovablePoints/segment.cpp \
    MovablePoints/smartctrlpoint.cpp \
    MovablePoints/pointshandler.cpp \
    MovablePoints/pathpointshandler.cpp \
    canvasbase.cpp \
    typemenu.cpp \
    wrappedint.cpp \
    zipfileloader.cpp \
    zipfilesaver.cpp

HEADERS += \
    Expressions/expression.h \
    Expressions/framebinding.h \
    Expressions/propertybinding.h \
    Animators/SculptPath/sculptbrush.h \
    Animators/SculptPath/sculptnode.h \
    Animators/SculptPath/sculptnodebase.h \
    Animators/SculptPath/sculptpath.h \
    Animators/SculptPath/sculptpathanimator.h \
    Animators/SculptPath/sculptpathcollection.h \
    Animators/SmartPath/listofnodes.h \
    Animators/SmartPath/smartpath.h \
    Animators/brushsettingsanimator.h \
    Animators/clampedpoint.h \
    Animators/clampedvalue.h \
    Animators/coloranimator.h \
    Animators/complexkey.h \
    Animators/customproperties.h \
    Animators/dynamiccomplexanimator.h \
    Animators/eboxorsound.h \
    Animators/eeffect.h \
    Animators/gradient.h \
    Animators/gradientpoints.h \
    Animators/interoptimalanimatort.h \
    Animators/outlinesettingsanimator.h \
    Animators/overlappingkeylist.h \
    Animators/overlappingkeys.h \
    Animators/paintsettingsanimator.h \
    Animators/qcubicsegment1danimator.h \
    Animators/qrealsnapshot.h \
    Animators/qstringanimator.h \
    Animators/sceneboundgradient.h \
    Animators/staticcomplexanimator.h \
    Animators/texteffectcollection.h \
    BlendEffects/blendeffect.h \
    BlendEffects/blendeffectboxshadow.h \
    BlendEffects/blendeffectcollection.h \
    BlendEffects/moveblendeffect.h \
    BlendEffects/targetedblendeffect.h \
    Boxes/animationbox.h \
    Boxes/boundingbox.h \
    Boxes/boxrendercontainer.h \
    Boxes/boxrenderdata.h \
    Boxes/boxwithpatheffects.h \
    Boxes/canvasrenderdata.h \
    Boxes/circle.h \
    Boxes/containerbox.h \
    Boxes/customboxcreator.h \
    Boxes/ecustombox.h \
    Boxes/effectsrenderer.h \
    Boxes/effectsubtaskspawner.h \
    Boxes/externallinkboxt.h \
    Boxes/frameremapping.h \
    Boxes/imagebox.h \
    Boxes/imagerenderdata.h \
    Boxes/imagesequencebox.h \
    Boxes/internallinkbox.h \
    Boxes/internallinkboxbase.h \
    Boxes/internallinkcanvas.h \
    Boxes/internallinkgroupbox.h \
    Boxes/layerboxrenderdata.h \
    Boxes/linkcanvasrenderdata.h \
    Boxes/paintbox.h \
    Boxes/pathbox.h \
    Boxes/pathboxrenderdata.h \
    Boxes/patheffectsmenu.h \
    Boxes/rectangle.h \
    Boxes/renderdatahandler.h \
    Boxes/sculptpathbox.h \
    Boxes/sculptpathboxrenderdata.h \
    Boxes/smartvectorpath.h \
    Boxes/svglinkbox.h \
    Boxes/textbox.h \
    Boxes/textboxrenderdata.h \
    Boxes/videobox.h \
    CacheHandlers/cachecontainer.h \
    CacheHandlers/hddcachablecachehandler.h \
    CacheHandlers/hddcachablecont.h \
    CacheHandlers/hddcachablerangecont.h \
    CacheHandlers/imagecachecontainer.h \
    CacheHandlers/imagedatahandler.h \
    CacheHandlers/samples.h \
    CacheHandlers/sceneframecontainer.h \
    CacheHandlers/soundcachecontainer.h \
    CacheHandlers/soundcachehandler.h \
    CacheHandlers/soundtmpfilehandlers.h \
    CacheHandlers/tmpdeleter.h \
    CacheHandlers/tmploader.h \
    CacheHandlers/tmpsaver.h \
    CacheHandlers/usedrange.h \
    CacheHandlers/usepointer.h \
    Expressions/propertybindingbase.h \
    Expressions/propertybindingparser.h \
    Expressions/valuebinding.h \
    FileCacheHandlers/animationcachehandler.h \
    FileCacheHandlers/audiostreamsdata.h \
    FileCacheHandlers/filecachehandler.h \
    FileCacheHandlers/filedatacachehandler.h \
    FileCacheHandlers/filehandlerobjref.h \
    FileCacheHandlers/imagecachehandler.h \
    FileCacheHandlers/imagesequencecachehandler.h \
    FileCacheHandlers/soundreader.h \
    FileCacheHandlers/svgfilecachehandler.h \
    FileCacheHandlers/videocachehandler.h \
    FileCacheHandlers/videoframeloader.h \
    FileCacheHandlers/videostreamsdata.h \
    GUI/boxeslistactionbutton.h \
    GUI/coloranimatorbutton.h \
    GUI/dialogsinterface.h \
    GUI/edialogs.h \
    GUI/ewidgets.h \
    GUI/global.h \
    GUI/propertynamedialog.h \
    GUI/sizesetter.h \
    GUI/valueinput.h \
    MovablePoints/gradientpoint.h \
    MovablePoints/pathpivot.h \
    Ora/oracreator.h \
    Ora/oraimporter.h \
    Ora/oraparser.h \
    Ora/orastructure.h \
    Paint/animatedsurface.h \
    Paint/autotiledsurface.h \
    Paint/autotilesdata.h \
    Paint/brushcontexedwrapper.h \
    Paint/brushescontext.h \
    Paint/brushstroke.h \
    Paint/brushstrokeset.h \
    Paint/colorconversions.h \
    Paint/drawableautotiledsurface.h \
    Paint/externalpaintapphandler.h \
    Paint/onionskin.h \
    Paint/painttarget.h \
    Paint/simplebrushwrapper.h \
    Paint/tile.h \
    Paint/tilebitmaps.h \
    Paint/undoabletile.h \
    PathEffects/custompatheffect.h \
    PathEffects/custompatheffectcreator.h \
    PathEffects/dashpatheffect.h \
    PathEffects/displacepatheffect.h \
    PathEffects/duplicatepatheffect.h \
    PathEffects/linespatheffect.h \
    PathEffects/patheffectcaller.h \
    PathEffects/patheffectcollection.h \
    PathEffects/patheffectsinclude.h \
    PathEffects/patheffectstask.h \
    PathEffects/solidifypatheffect.h \
    PathEffects/spatialdisplacepatheffect.h \
    PathEffects/subdividepatheffect.h \
    PathEffects/subpatheffect.h \
    PathEffects/sumpatheffect.h \
    PathEffects/zigzagpatheffect.h \
    Private/Tasks/complextask.h \
    Private/Tasks/execcontroller.h \
    Private/Tasks/gputaskexecutor.h \
    Private/Tasks/offscreenqgl33c.h \
    Private/Tasks/taskexecutor.h \
    Private/Tasks/taskque.h \
    Private/Tasks/taskquehandler.h \
    Private/Tasks/taskscheduler.h \
    Private/document.h \
    Private/esettings.h \
    Private/memorystructs.h \
    Private/qatomiclist.h \
    Properties/boolpropertycontainer.h \
    Properties/boxtargetproperty.h \
    Properties/emimedata.h \
    Properties/namedproperty.h \
    RasterEffects/blureffect.h \
    RasterEffects/customrastereffect.h \
    RasterEffects/motionblureffect.h \
    RasterEffects/rastereffect.h \
    RasterEffects/customrastereffectcreator.h \
    RasterEffects/rastereffectcaller.h \
    RasterEffects/rastereffectcollection.h \
    RasterEffects/rastereffectmenucreator.h \
    RasterEffects/rastereffectsinclude.h \
    RasterEffects/shadoweffect.h \
    ReadWrite/basicreadwrite.h \
    ReadWrite/efuturepos.h \
    ReadWrite/ereadstream.h \
    ReadWrite/evformat.h \
    ReadWrite/ewritestream.h \
    ReadWrite/filefooter.h \
    Segments/fitcurves.h \
    Segments/smoothcurves.h \
    ShaderEffects/PropertyCreators/coloranimatorcreator.h \
    ShaderEffects/PropertyCreators/intanimatorcreator.h \
    ShaderEffects/PropertyCreators/qpointfanimatorcreator.h \
    ShaderEffects/PropertyCreators/qrealanimatorcreator.h \
    ShaderEffects/PropertyCreators/shaderpropertycreator.h \
    ShaderEffects/shadereffect.h \
    ShaderEffects/shadereffectcaller.h \
    ShaderEffects/shadereffectcreator.h \
    ShaderEffects/shadereffectjs.h \
    ShaderEffects/shadereffectprogram.h \
    ShaderEffects/shadervaluehandler.h \
    ShaderEffects/uniformspecifiercreator.h \
    Sound/eindependentsound.h \
    Sound/esound.h \
    Sound/esoundlink.h \
    Sound/esoundobjectbase.h \
    Sound/esoundsettings.h \
    Sound/evideosound.h \
    Sound/soundcomposition.h \
    Sound/soundmerger.h \
    Tasks/domeletask.h \
    Tasks/etask.h \
    Tasks/etaskbase.h \
    Tasks/updatable.h \
    Timeline/animationrect.h \
    Timeline/durationrectangle.h \
    Timeline/fixedlenanimationrect.h \
    action.h \
    actions.h \
    canvas.h \
    clipboardcontainer.h \
    colorhelpers.h \
    colorsetting.h \
    conncontext.h \
    conncontextobjlist.h \
    conncontextptr.h \
    core_global.h \
    cpurendertools.h \
    customhandler.h \
    customidentifier.h \
    drawpath.h \
    efiltersettings.h \
    etexture.h \
    etextureframebuffer.h \
    fileshandler.h \
    filesourcescache.h \
    gpurendertools.h \
    hardwareenums.h \
    importhandler.h \
    kraimporter.h \
    libmypaintincludes.h \
    matrixdecomposition.h \
    memorydatahandler.h \
    namefixer.h \
    paintsettings.h \
    paintsettingsapplier.h \
    pathoperations.h \
    randomgrid.h \
    rangemap.h \
    regexhelpers.h \
    simpletask.h \
    smartPointers/ememory.h \
    smartPointers/eobject.h \
    smartPointers/stdpointer.h \
    smartPointers/selfref.h \
    smartPointers/stdselfref.h \
    singlewidgettarget.h \
    Properties/property.h \
    Properties/comboboxproperty.h \
    Animators/key.h \
    Animators/complexanimator.h \
    Animators/animator.h \
    Animators/intanimator.h \
    Animators/boolanimator.h \
    svgexporter.h \
    svgexporthelpers.h \
    svgimporter.h \
    switchablecontext.h \
    swt_abstraction.h \
    swt_rulescollection.h \
    texteffect.h \
    texteffectcaller.h \
    transformvalues.h \
    undoredo.h \
    exceptions.h \
    glhelpers.h \
    skia/skiadefines.h \
    skia/skiaincludes.h \
    skia/skimagecopy.h \
    skia/skqtconversions.h \
    pointhelpers.h \
    simplemath.h \
    Animators/qrealpoint.h \
    Animators/graphanimator.h \
    Animators/graphkey.h \
    Animators/interpolationkey.h \
    Animators/interpolationanimator.h \
    framerange.h \
    Segments/quadsegment.h \
    Segments/conicsegment.h \
    Segments/cubiclist.h \
    Segments/cubicnode.h \
    Segments/qcubicsegment2d.h \
    Segments/qcubicsegment1d.h \
    Animators/animatort.h \
    Animators/interpolatedanimator.h \
    Animators/steppedanimator.h \
    differsinterpolate.h \
    skia/skiahelpers.h \
    Animators/keyt.h \
    Animators/basedkeyt.h \
    Animators/graphkeyt.h \
    Animators/basedanimatort.h \
    Animators/graphanimatort.h \
    Animators/SmartPath/node.h \
    Animators/SmartPath/nodelist.h \
    Animators/SmartPath/smartpathanimator.h \
    Animators/interpolationanimatort.h \
    nodepointvalues.h \
    Animators/SmartPath/smartpathcollection.h \
    Animators/interpolationkeyt.h \
    Properties/boolproperty.h \
    PathEffects/patheffect.h \
    Animators/transformanimator.h \
    Animators/qrealanimator.h \
    Animators/qrealkey.h \
    Animators/qrealvalueeffect.h \
    Animators/qpointfanimator.h \
    MovablePoints/movablepoint.h \
    MovablePoints/nonanimatedmovablepoint.h \
    MovablePoints/animatedpoint.h \
    MovablePoints/boxpathpoint.h \
    MovablePoints/smartnodepoint.h \
    MovablePoints/segment.h \
    MovablePoints/smartctrlpoint.h \
    MovablePoints/pointshandler.h \
    MovablePoints/pathpointshandler.h \
    canvasbase.h \
    typemenu.h \
    pointtypemenu.h \
    wrappedint.h \
    zipfileloader.h \
    zipfilesaver.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

RESOURCES += \
    coreresources.qrc
