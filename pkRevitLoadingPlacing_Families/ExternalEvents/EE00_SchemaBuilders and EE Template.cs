﻿
extern alias global3;

using global3.Autodesk.Revit.DB;
using global3.Autodesk.Revit.DB.ExtensibleStorage;
using Autodesk.Revit.UI;
using System;
using System.Collections.Generic;



namespace pkRevitLoadingPlacing_Families
{

    [global3.Autodesk.Revit.Attributes.Transaction(global3.Autodesk.Revit.Attributes.TransactionMode.Manual)]
    public class EE01_Part1_Template : IExternalEventHandler  //this is the last when one making a checklist change, EE4 must be just for when an element is new
    {

        public void Execute(UIApplication uiapp)
        {
            try
            {
                UIDocument uidoc = uiapp.ActiveUIDocument;
                Document doc = uidoc.Document; // myListView_ALL_Fam_Master.Items.Add(doc.GetElement(uidoc.Selection.GetElementIds().First()).Name);

                using (Transaction tx = new Transaction(doc))
                {
                    tx.Start("Appropriate descriptor");

                    tx.Commit();
                }
            }

            #region catch and finally
            catch (Exception ex)
            {
                _952_PRLoogleClassLibrary.DatabaseMethods.writeDebug("EE01_Part1" + Environment.NewLine + ex.Message + Environment.NewLine + ex.InnerException, true);
            }
            finally
            {
            }
            #endregion
        }

        public string GetName()
        {
            return "External Event Example";
        }
    }


    class Schema_IntersectorLines
    {
        public const string myConstantStringSchema_IntersectorLines = "dc122907-02d5-4cb5-b269-5b11b2b72b90";

        public static Schema createSchema_IntersectorLines()
        {
            SchemaBuilder mySchemaBuilder = new SchemaBuilder(new Guid(myConstantStringSchema_IntersectorLines));
            mySchemaBuilder.SetSchemaName("IntersectorLines_Schema");
            FieldBuilder fb_ArrayField = mySchemaBuilder.AddArrayField("IntersectorLines_List", typeof(ElementId));
            //fb_ArrayField.SetSubSchemaGUID(new Guid(myConstantStringSchema_FurnLocations));

            return mySchemaBuilder.Finish();
        }
    }

    
    class Schema_FurnLocations
    {
        public const string myConstantStringSchema_FurnLocations_Index = "3e2b5963-de35-4d50-9284-cd3154f202fa";
        public const string myConstantStringSchema_FurnLocations = "330a1ede-d77b-4350-963d-3505f7ae5e23";

        public static Schema createSchema_FurnLocations_Index()
        {
            SchemaBuilder mySchemaBuilder = new SchemaBuilder(new Guid(myConstantStringSchema_FurnLocations_Index));
            mySchemaBuilder.SetSchemaName("FurnLocations_Index");
            FieldBuilder mapField_Parent = mySchemaBuilder.AddMapField("FurnLocations_Index", typeof(string), typeof(Entity));
            mapField_Parent.SetSubSchemaGUID(new Guid(myConstantStringSchema_FurnLocations));

            return mySchemaBuilder.Finish();
        }

        public static Schema createSchema_FurnLocations()
        {
            Guid myGUID = new Guid(myConstantStringSchema_FurnLocations);
            SchemaBuilder mySchemaBuilder = new SchemaBuilder(myGUID);
            mySchemaBuilder.SetSchemaName("FurnLocations");

            

            FieldBuilder mapField_Child = mySchemaBuilder.AddMapField("FurnLocations", typeof(ElementId), typeof(XYZ));
            //mapField_Child.SetUnitType(UnitType.UT_Length);
            mapField_Child.SetSpec(new ForgeTypeId(SpecTypeId.Length.TypeId));

            FieldBuilder mapField_Child_Angle = mySchemaBuilder.AddMapField("FurnLocations_Angle", typeof(ElementId), typeof(double));
            //mapField_Child_Angle.SetUnitType(UnitType.UT_Length);
            mapField_Child_Angle.SetSpec(new ForgeTypeId(SpecTypeId.Length.TypeId));
            IList<int> list = new List<int>() { 111, 222, 333 };


            FieldBuilder mapField_Child_Pattern = mySchemaBuilder.AddMapField("FurnLocations_Pattern", typeof(ElementId), typeof(ElementId));
            FieldBuilder mapField_Child_Red = mySchemaBuilder.AddMapField("FurnLocations_ColorRed", typeof(ElementId), typeof(int));
            FieldBuilder mapField_Child_Green = mySchemaBuilder.AddMapField("FurnLocations_ColorGreen", typeof(ElementId), typeof(int));
            FieldBuilder mapField_Child_Blue = mySchemaBuilder.AddMapField("FurnLocations_ColorBlue", typeof(ElementId), typeof(int));

            return mySchemaBuilder.Finish();
        }

    }
}
