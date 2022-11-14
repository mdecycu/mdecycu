# NX 2027
# Journal created by admin on Fri Nov 11 14:55:33 2022 台北標準時間

#
import math
import NXOpen
import NXOpen.Annotations
import NXOpen.Assemblies
import NXOpen.Drawings
import NXOpen.Features
import NXOpen.GeometricUtilities
import NXOpen.Preferences
def main() : 

    theSession  = NXOpen.Session.GetSession()
    workPart = theSession.Parts.Work
    displayPart = theSession.Parts.Display
    # ----------------------------------------------
    #   Menu: Insert->Sketch
    # ----------------------------------------------
    markId1 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Visible, "Enter Sketch")
    
    markId2 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Visible, "Update Model from Sketch")
    
    theSession.BeginTaskEnvironment()
    
    markId3 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Visible, "Start")
    
    sketchInPlaceBuilder1 = workPart.Sketches.CreateSketchInPlaceBuilder2(NXOpen.Sketch.Null)
    
    origin1 = NXOpen.Point3d(0.0, 0.0, 0.0)
    normal1 = NXOpen.Vector3d(0.0, 0.0, 1.0)
    plane1 = workPart.Planes.CreatePlane(origin1, normal1, NXOpen.SmartObject.UpdateOption.WithinModeling)
    
    sketchInPlaceBuilder1.PlaneReference = plane1
    
    unit1 = workPart.UnitCollection.FindObject("MilliMeter")
    expression1 = workPart.Expressions.CreateSystemExpressionWithUnits("0", unit1)
    
    expression2 = workPart.Expressions.CreateSystemExpressionWithUnits("0", unit1)
    
    sketchAlongPathBuilder1 = workPart.Sketches.CreateSketchAlongPathBuilder(NXOpen.Sketch.Null)
    
    simpleSketchInPlaceBuilder1 = workPart.Sketches.CreateSimpleSketchInPlaceBuilder()
    
    sketchAlongPathBuilder1.PlaneLocation.Expression.SetFormula("0")
    
    theSession.SetUndoMarkName(markId3, "Create Sketch Dialog")
    
    simpleSketchInPlaceBuilder1.UseWorkPartOrigin = False
    
    coordinates1 = NXOpen.Point3d(0.0, 0.0, 0.0)
    point1 = workPart.Points.CreatePoint(coordinates1)
    
    origin2 = NXOpen.Point3d(0.0, 0.0, 0.0)
    matrix1 = NXOpen.Matrix3x3()
    
    matrix1.Xx = 1.0
    matrix1.Xy = 0.0
    matrix1.Xz = 0.0
    matrix1.Yx = 0.0
    matrix1.Yy = 1.0
    matrix1.Yz = 0.0
    matrix1.Zx = 0.0
    matrix1.Zy = 0.0
    matrix1.Zz = 1.0
    plane2 = workPart.Planes.CreateFixedTypePlane(origin2, matrix1, NXOpen.SmartObject.UpdateOption.WithinModeling)
    
    coordinates2 = NXOpen.Point3d(0.0, 0.0, 0.0)
    point2 = workPart.Points.CreatePoint(coordinates2)
    
    origin3 = NXOpen.Point3d(0.0, 0.0, 0.0)
    vector1 = NXOpen.Vector3d(0.0, 0.0, 1.0)
    direction1 = workPart.Directions.CreateDirection(origin3, vector1, NXOpen.SmartObject.UpdateOption.WithinModeling)
    
    origin4 = NXOpen.Point3d(0.0, 0.0, 0.0)
    vector2 = NXOpen.Vector3d(1.0, 0.0, 0.0)
    direction2 = workPart.Directions.CreateDirection(origin4, vector2, NXOpen.SmartObject.UpdateOption.WithinModeling)
    
    origin5 = NXOpen.Point3d(0.0, 0.0, 0.0)
    matrix2 = NXOpen.Matrix3x3()
    
    matrix2.Xx = 1.0
    matrix2.Xy = 0.0
    matrix2.Xz = 0.0
    matrix2.Yx = 0.0
    matrix2.Yy = 1.0
    matrix2.Yz = 0.0
    matrix2.Zx = 0.0
    matrix2.Zy = 0.0
    matrix2.Zz = 1.0
    plane3 = workPart.Planes.CreateFixedTypePlane(origin5, matrix2, NXOpen.SmartObject.UpdateOption.WithinModeling)
    
    xform1 = workPart.Xforms.CreateXformByPlaneXDirPoint(plane3, direction2, point2, NXOpen.SmartObject.UpdateOption.WithinModeling, 0.625, False, False)
    
    cartesianCoordinateSystem1 = workPart.CoordinateSystems.CreateCoordinateSystem(xform1, NXOpen.SmartObject.UpdateOption.WithinModeling)
    
    simpleSketchInPlaceBuilder1.CoordinateSystem = cartesianCoordinateSystem1
    
    datumAxis1 = workPart.Datums.FindObject("DATUM_CSYS(0) X axis")
    simpleSketchInPlaceBuilder1.HorizontalReference.Value = datumAxis1
    
    point3 = simpleSketchInPlaceBuilder1.SketchOrigin
    
    simpleSketchInPlaceBuilder1.SketchOrigin = point3
    
    markId4 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Create Sketch")
    
    theSession.DeleteUndoMark(markId4, None)
    
    markId5 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Create Sketch")
    
    theSession.Preferences.Sketch.CreateInferredConstraints = False
    
    theSession.Preferences.Sketch.ContinuousAutoDimensioning = False
    
    theSession.Preferences.Sketch.DimensionLabel = NXOpen.Preferences.SketchPreferences.DimensionLabelType.Expression
    
    theSession.Preferences.Sketch.TextSizeFixed = False
    
    theSession.Preferences.Sketch.FixedTextSize = 3.0
    
    theSession.Preferences.Sketch.DisplayParenthesesOnReferenceDimensions = True
    
    theSession.Preferences.Sketch.DisplayReferenceGeometry = False
    
    theSession.Preferences.Sketch.DisplayShadedRegions = True
    
    theSession.Preferences.Sketch.FindMovableObjects = True
    
    theSession.Preferences.Sketch.ConstraintSymbolSize = 3.0
    
    theSession.Preferences.Sketch.DisplayObjectColor = False
    
    theSession.Preferences.Sketch.DisplayObjectName = True
    
    theSession.Preferences.Sketch.EditDimensionOnCreation = True
    
    theSession.Preferences.Sketch.CreateDimensionForTypedValues = True
    
    nXObject1 = simpleSketchInPlaceBuilder1.Commit()
    
    sketch1 = nXObject1
    feature1 = sketch1.Feature
    
    markId6 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "update")
    
    nErrs1 = theSession.UpdateManager.DoUpdate(markId6)
    
    sketch1.Activate(NXOpen.Sketch.ViewReorient.TrueValue)
    
    theSession.Preferences.Sketch.FindMovableObjects = True
    
    sketchFindMovableObjectsBuilder1 = workPart.Sketches.CreateFindMovableObjectsBuilder()
    
    nXObject2 = sketchFindMovableObjectsBuilder1.Commit()
    
    sketchFindMovableObjectsBuilder1.Destroy()
    
    theSession.DeleteUndoMark(markId5, None)
    
    theSession.SetUndoMarkName(markId3, "Create Sketch")
    
    sketchInPlaceBuilder1.Destroy()
    
    sketchAlongPathBuilder1.Destroy()
    
    simpleSketchInPlaceBuilder1.Destroy()
    
    try:
        # Expression is still in use.
        workPart.Expressions.Delete(expression2)
    except NXOpen.NXException as ex:
        ex.AssertErrorCode(1050029)
        
    try:
        # Expression is still in use.
        workPart.Expressions.Delete(expression1)
    except NXOpen.NXException as ex:
        ex.AssertErrorCode(1050029)
        
    plane1.DestroyPlane()
    
    theSession.DeleteUndoMarksUpToMark(markId2, None, True)
    
    markId7 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Visible, "Open Sketch")
    
    theSession.ActiveSketch.SetName("SKETCH_000")
    
    # ----------------------------------------------
    #   Menu: Insert->Curve->Circle...
    # ----------------------------------------------
    markId8 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Profile short list")
    
    markId9 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Curve")
    
    theSession.SetUndoMarkVisibility(markId9, "Curve", NXOpen.Session.MarkVisibility.Visible)
    
    nXMatrix1 = theSession.ActiveSketch.Orientation
    
    center1 = NXOpen.Point3d(0.0, -4.8093085240761866, 0.0)
    arc1 = workPart.Curves.CreateArc(center1, nXMatrix1, 163.73294225216978, 0.0, ( 360.0 * math.pi/180.0 ))
    
    theSession.ActiveSketch.AddGeometry(arc1, NXOpen.Sketch.InferConstraintsOption.InferNoConstraints)
    
    theSession.ActiveSketch.Update()
    
    # ----------------------------------------------
    #   Dialog Begin Circle
    # ----------------------------------------------
    markId10 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Curve")
    
    scaleAboutPoint1 = NXOpen.Point3d(-319.81901685100502, 182.75372391485999, 0.0)
    viewCenter1 = NXOpen.Point3d(319.81901685100502, -182.75372391485999, 0.0)
    workPart.ModelingViews.WorkView.ZoomAboutPoint(0.80000000000000004, scaleAboutPoint1, viewCenter1)
    
    theSession.DeleteUndoMark(markId10, "Curve")
    
    sketchFindMovableObjectsBuilder2 = workPart.Sketches.CreateFindMovableObjectsBuilder()
    
    nXObject3 = sketchFindMovableObjectsBuilder2.Commit()
    
    sketchFindMovableObjectsBuilder2.Destroy()
    
    markId11 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Select Geometry")
    
    sketchDragGeometryBuilder1 = workPart.Sketches.CreateDragGeometryBuilder()
    
    dragobjects1 = [None] * 1 
    dragobjects1[0] = NXOpen.Sketch.SketchGeometry()
    dragobjects1[0].Geometry = arc1
    dragobjects1[0].PointType = NXOpen.Sketch.PointType.NotSet
    dragobjects1[0].PointIndex = 0
    sketchDragGeometryBuilder1.SetDragGeometry(dragobjects1)
    
    sketchDragGeometryBuilder1.SplineLinearScale = False
    
    foundrelations1 = sketchDragGeometryBuilder1.FindRelations()
    
    theSession.ActiveSketch.UpdateDimensionDisplay()
    
    dragobjects2 = [None] * 1 
    dragobjects2[0] = NXOpen.Sketch.SketchGeometry()
    dragobjects2[0].Geometry = arc1
    dragobjects2[0].PointType = NXOpen.Sketch.PointType.NotSet
    dragobjects2[0].PointIndex = 0
    sketchDragGeometryBuilder1.SetDragGeometry(dragobjects2)
    
    foundrelations2 = sketchDragGeometryBuilder1.FindRelations()
    
    sketchDragGeometryBuilder1.Destroy()
    
    markId12 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Visible, "Create Constant Dimension")
    
    dimensionPreferences1 = workPart.Annotations.Preferences.GetDimensionPreferences()
    
    narrowDimensionPreferences1 = dimensionPreferences1.GetNarrowDimensionPreferences()
    
    option1 = narrowDimensionPreferences1.DimensionDisplayOption
    
    sketchRadialDimensionBuilder1 = workPart.Sketches.CreateRadialDimensionBuilder(NXOpen.Annotations.Dimension.Null)
    
    drivingValueBuilder1 = sketchRadialDimensionBuilder1.Driving
    
    drivingValueBuilder1.DrivingMethod = NXOpen.Annotations.DrivingValueBuilder.DrivingValueMethod.Constant
    
    selectNXObject1 = sketchRadialDimensionBuilder1.FirstAssociativity
    
    point1_2 = NXOpen.Point3d(0.0, -4.8093085240761866, 0.0)
    point2_2 = NXOpen.Point3d(0.0, 0.0, 0.0)
    selectNXObject1.SetValue(NXOpen.InferSnapType.SnapType.NotSet, arc1, NXOpen.View.Null, point1_2, NXOpen.TaggedObject.Null, NXOpen.View.Null, point2_2)
    
    dimensionMeasurementBuilder1 = sketchRadialDimensionBuilder1.Measurement
    
    dimensionMeasurementBuilder1.Method = NXOpen.Annotations.DimensionMeasurementBuilder.MeasurementMethod.Diametral
    
    originBuilder1 = sketchRadialDimensionBuilder1.Origin
    
    origin7 = NXOpen.Point3d(217.911307819294, 91.544778207236604, 0.0)
    originBuilder1.OriginPoint = origin7
    
    originBuilder1.SetInferRelativeToGeometry(True)
    
    nXObject4 = sketchRadialDimensionBuilder1.Commit()
    
    sketchRadialDimensionBuilder1.Destroy()
    
    narrowDimensionPreferences1.Dispose()
    dimensionPreferences1.Dispose()
    sketchFindMovableObjectsBuilder3 = workPart.Sketches.CreateFindMovableObjectsBuilder()
    
    nXObject5 = sketchFindMovableObjectsBuilder3.Commit()
    
    sketchFindMovableObjectsBuilder3.Destroy()
    
    markId13 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Visible, "Edit Dimension")
    
    markId14 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Start")
    
    diameterDimension1 = nXObject4
    sketchEditDimensionValueBuilder1 = workPart.Sketches.CreateEditDimensionValueBuilder(diameterDimension1)
    
    selectNXObjectList1 = sketchEditDimensionValueBuilder1.ExtraGeometries
    
    foundrelations3 = sketchEditDimensionValueBuilder1.FindRelations()
    
    sketchDimensionalConstraint1 = theSession.ActiveSketch.FindObject("DiameterDim [Curve Arc1]")
    sketchDimensionalConstraint1.SetEndBehaviorPreference(NXOpen.SketchDimensionalConstraint.EndBehaviorPreference.Any)
    
    theSession.SetUndoMarkName(markId14, "Edit Dimension Value Dialog")
    
    theSession.SetUndoMarkVisibility(markId14, None, NXOpen.Session.MarkVisibility.Visible)
    
    # ----------------------------------------------
    #   Dialog Begin Edit Dimension Value
    # ----------------------------------------------
    markId15 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Edit Dimension Value")
    
    theSession.DeleteUndoMark(markId15, None)
    
    markId16 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Edit Dimension Value")
    
    sketchEditDimensionValueBuilder1.Destroy()
    
    theSession.UndoToMark(markId14, None)
    
    theSession.DeleteUndoMark(markId14, None)
    
    theSession.DeleteUndoMark(markId14, None)
    
    sketchFindMovableObjectsBuilder4 = workPart.Sketches.CreateFindMovableObjectsBuilder()
    
    nXObject6 = sketchFindMovableObjectsBuilder4.Commit()
    
    sketchFindMovableObjectsBuilder4.Destroy()
    
    # ----------------------------------------------
    #   Menu: Task->Finish Sketch
    # ----------------------------------------------
    sketchWorkRegionBuilder1 = workPart.Sketches.CreateWorkRegionBuilder()
    
    sketchWorkRegionBuilder1.Scope = NXOpen.SketchWorkRegionBuilder.ScopeType.EntireSketch
    
    nXObject7 = sketchWorkRegionBuilder1.Commit()
    
    sketchWorkRegionBuilder1.Destroy()
    
    theSession.ActiveSketch.CalculateStatus()
    
    theSession.Preferences.Sketch.SectionView = False
    
    markId17 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Deactivate Sketch")
    
    theSession.ActiveSketch.Deactivate(NXOpen.Sketch.ViewReorient.TrueValue, NXOpen.Sketch.UpdateLevel.Model)
    
    theSession.DeleteUndoMarksSetInTaskEnvironment()
    
    theSession.EndTaskEnvironment()
    
    # ----------------------------------------------
    #   Menu: Insert->Design Feature->Extrude...
    # ----------------------------------------------
    markId18 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Visible, "Start")
    
    extrudeBuilder1 = workPart.Features.CreateExtrudeBuilder(NXOpen.Features.Feature.Null)
    
    section1 = workPart.Sections.CreateSection(0.0094999999999999998, 0.01, 0.5)
    
    extrudeBuilder1.Section = section1
    
    extrudeBuilder1.AllowSelfIntersectingSection(True)
    
    unit2 = extrudeBuilder1.Draft.FrontDraftAngle.Units
    
    expression3 = workPart.Expressions.CreateSystemExpressionWithUnits("2.00", unit2)
    
    extrudeBuilder1.DistanceTolerance = 0.01
    
    extrudeBuilder1.BooleanOperation.Type = NXOpen.GeometricUtilities.BooleanOperation.BooleanType.Create
    
    targetBodies1 = [NXOpen.Body.Null] * 1 
    targetBodies1[0] = NXOpen.Body.Null
    extrudeBuilder1.BooleanOperation.SetTargetBodies(targetBodies1)
    
    extrudeBuilder1.Limits.StartExtend.Value.SetFormula("0")
    
    extrudeBuilder1.Limits.EndExtend.Value.SetFormula("25")
    
    extrudeBuilder1.Offset.StartOffset.SetFormula("0")
    
    extrudeBuilder1.Offset.EndOffset.SetFormula("5")
    
    extrudeBuilder1.Limits.StartExtend.Value.SetFormula("0")
    
    extrudeBuilder1.Limits.EndExtend.Value.SetFormula("100")
    
    extrudeBuilder1.Draft.FrontDraftAngle.SetFormula("2")
    
    extrudeBuilder1.Draft.BackDraftAngle.SetFormula("2")
    
    extrudeBuilder1.Offset.StartOffset.SetFormula("0")
    
    extrudeBuilder1.Offset.EndOffset.SetFormula("5")
    
    smartVolumeProfileBuilder1 = extrudeBuilder1.SmartVolumeProfile
    
    smartVolumeProfileBuilder1.OpenProfileSmartVolumeOption = False
    
    smartVolumeProfileBuilder1.CloseProfileRule = NXOpen.GeometricUtilities.SmartVolumeProfileBuilder.CloseProfileRuleType.Fci
    
    theSession.SetUndoMarkName(markId18, "Extrude Dialog")
    
    section1.DistanceTolerance = 0.01
    
    section1.ChainingTolerance = 0.0094999999999999998
    
    section1.SetAllowedEntityTypes(NXOpen.Section.AllowTypes.OnlyCurves)
    
    markId19 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, None)
    
    selectionIntentRuleOptions1 = workPart.ScRuleFactory.CreateRuleOptions()
    
    selectionIntentRuleOptions1.SetSelectedFromInactive(False)
    
    curves1 = [NXOpen.ICurve.Null] * 1 
    curves1[0] = arc1
    seedPoint1 = NXOpen.Point3d(-21.563911716848391, -15.554231791445833, 0.0)
    regionBoundaryRule1 = workPart.ScRuleFactory.CreateRuleRegionBoundary(sketch1, curves1, seedPoint1, 0.01, selectionIntentRuleOptions1)
    
    selectionIntentRuleOptions1.Dispose()
    section1.AllowSelfIntersection(True)
    
    section1.AllowDegenerateCurves(False)
    
    rules1 = [None] * 1 
    rules1[0] = regionBoundaryRule1
    helpPoint1 = NXOpen.Point3d(0.0, 0.0, 0.0)
    section1.AddToSection(rules1, NXOpen.NXObject.Null, NXOpen.NXObject.Null, NXOpen.NXObject.Null, helpPoint1, NXOpen.Section.Mode.Create, False)
    
    theSession.DeleteUndoMark(markId19, None)
    
    markId20 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "section mark")
    
    markId21 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, None)
    
    theSession.DeleteUndoMark(markId21, None)
    
    direction3 = workPart.Directions.CreateDirection(sketch1, NXOpen.Sense.Forward, NXOpen.SmartObject.UpdateOption.WithinModeling)
    
    extrudeBuilder1.Direction = direction3
    
    extrudeBuilder1.BooleanOperation.Type = NXOpen.GeometricUtilities.BooleanOperation.BooleanType.Create
    
    targetBodies2 = [NXOpen.Body.Null] * 1 
    targetBodies2[0] = NXOpen.Body.Null
    extrudeBuilder1.BooleanOperation.SetTargetBodies(targetBodies2)
    
    targetBodies3 = []
    extrudeBuilder1.BooleanOperation.SetTargetBodies(targetBodies3)
    
    theSession.DeleteUndoMark(markId20, None)
    
    extrudeBuilder1.BooleanOperation.Type = NXOpen.GeometricUtilities.BooleanOperation.BooleanType.Create
    
    targetBodies4 = [NXOpen.Body.Null] * 1 
    targetBodies4[0] = NXOpen.Body.Null
    extrudeBuilder1.BooleanOperation.SetTargetBodies(targetBodies4)
    
    targetBodies5 = []
    extrudeBuilder1.BooleanOperation.SetTargetBodies(targetBodies5)
    
    markId22 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Extrude")
    
    theSession.DeleteUndoMark(markId22, None)
    
    markId23 = theSession.SetUndoMark(NXOpen.Session.MarkVisibility.Invisible, "Extrude")
    
    extrudeBuilder1.ParentFeatureInternal = False
    
    feature2 = extrudeBuilder1.CommitFeature()
    
    theSession.DeleteUndoMark(markId23, None)
    
    theSession.SetUndoMarkName(markId18, "Extrude")
    
    expression4 = extrudeBuilder1.Limits.StartExtend.Value
    expression5 = extrudeBuilder1.Limits.EndExtend.Value
    extrudeBuilder1.Destroy()
    
    workPart.Expressions.Delete(expression3)
    
    scaleAboutPoint2 = NXOpen.Point3d(-492.95412371771448, -8.4162899171316869, 0.0)
    viewCenter2 = NXOpen.Point3d(492.95412371771448, 8.4162899171316869, 0.0)
    workPart.ModelingViews.WorkView.ZoomAboutPoint(1.25, scaleAboutPoint2, viewCenter2)
    
    # ----------------------------------------------
    #   Menu: Tools->Journal->Stop Recording
    # ----------------------------------------------
    
if __name__ == '__main__':
    main()