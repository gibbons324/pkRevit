﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

using Autodesk.Revit.UI;
using Autodesk.Revit.DB;
using Autodesk.Revit.DB.ExtensibleStorage;
using _952_PRLoogleClassLibrary;


namespace pkRevitMisc.CommandsWithWindows.Add_Edit_Parameters
{

    [Autodesk.Revit.Attributes.Transaction(Autodesk.Revit.Attributes.TransactionMode.Manual)]
    public class EE17_Edit_StringBasedParameters : IExternalEventHandler
    {
        ////public MainWindow myWindow1 { get; set; }
        public Window1617_AddEditParameters myWindow2 { get; set; }

        public void Execute(UIApplication uiapp)
        {
            try
            {

                ///        TECHNIQUE 18 OF 19 (EE17_Edit_StringBasedParameters.cs)
                ///↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ EDIT STRING BASED PARAMETERS ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
                ///
                /// Interfaces and ENUM's:
                /// 
                /// 
                /// Demonstrates classes:
                ///     Parameter
                /// 
                /// 
                /// Key methods:
                ///     myElement.LookupParameter(
                ///     myParameter.Set(
                ///     
                ///     
                /// It is much nicer it is to edit text in a wpf textbox than it is in a properties grid. 
                /// And where the carriage return goes is important for schedule comprehension.
                /// Multiline text paramter can't be added codally.
                ///
                ///
				///	https://github.com/joshnewzealand/Revit-API-Playpen-CSharp


                if (myWindow2.myIntegerUpDown.Value.Value == -1)
                {
                    myWindow2.myTextBoxPrevious.Text = "";
                    myWindow2.myTextBoxNew.Text = "";
                    myWindow2.myListBoxInstanceParameters.SelectedIndex = -1;
                    myWindow2.myListBoxTypeParameters.SelectedIndex = -1;
                    MessageBox.Show("Please select and 'Acquire' an entity.");
                    return;
                }

                UIDocument uidoc = uiapp.ActiveUIDocument;
                Document doc = uidoc.Document; // myListView_ALL_Fam_Master.Items.Add(doc.GetElement(uidoc.Selection.GetElementIds().First()).Name);

                Element myElement = doc.GetElement(new ElementId(myWindow2.myIntegerUpDown.Value.Value));

                if (myElement == null)
                {
                    myWindow2.myIntegerUpDown.Value = -1;
                    MessageBox.Show("Entity was removed.");
                    return;
                }

                using (Transaction tx = new Transaction(doc))
                {
                    tx.Start("Edit Parameters");

                    Parameter myParameter = null;

                    if (myWindow2.myListBoxInstanceParameters.SelectedIndex != -1)
                    {
                        if (((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxInstanceParameters.SelectedItem).theIsBuiltInParameter)
                        {
                            myParameter = myElement.get_Parameter(((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxInstanceParameters.SelectedItem).theBIP);
                        }
                        else
                        {
                            if (myElement.LookupParameter(((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxInstanceParameters.SelectedItem).theParameterName) == null)
                            {
                                MessageBox.Show("'" + ((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxInstanceParameters.SelectedItem).theParameterName + "' parameter does not exist." + Environment.NewLine + Environment.NewLine + "Please click the LEFT 'Add Shared Parameters' button");
                                myWindow2.myTextBoxPrevious.Text = "";
                                myWindow2.myTextBoxNew.Text = "";
                                myWindow2.myTextBoxNew.IsEnabled = false;
                                myWindow2.myBool_StayDown = true;
                                myWindow2.myListBoxInstanceParameters.SelectedIndex = -1;
                                myWindow2.myListBoxTypeParameters.SelectedIndex = -1;
                                return;
                            }

                            myParameter = myElement.GetParameters(((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxInstanceParameters.SelectedItem).theParameterName)[0];
                        }
                    }

                    if (myWindow2.myListBoxTypeParameters.SelectedIndex != -1)
                    {
                        Element myElementType = doc.GetElement(myElement.GetTypeId());

                        if (((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxTypeParameters.SelectedItem).theIsBuiltInParameter)
                        {
                            myParameter = myElementType.get_Parameter(((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxTypeParameters.SelectedItem).theBIP);  //myListBoxTypeParameters
                        }
                        else
                        {
                            if (myElementType.LookupParameter(((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxTypeParameters.SelectedItem).theParameterName) == null)
                            {
                                MessageBox.Show("'" + ((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxTypeParameters.SelectedItem).theParameterName + "' type parameter does not exist." + Environment.NewLine + Environment.NewLine + "Please click the RIGHT 'Add Shared Parameters' button");
                                myWindow2.myTextBoxPrevious.Text = "";
                                myWindow2.myTextBoxNew.Text = "";
                                myWindow2.myTextBoxNew.IsEnabled = false;
                                myWindow2.myBool_StayDown = true;
                                myWindow2.myListBoxInstanceParameters.SelectedIndex = -1;
                                myWindow2.myListBoxTypeParameters.SelectedIndex = -1;
                                return;
                            }

                            myParameter = myElementType.GetParameters(((Window1617_AddEditParameters.aBuiltInParameter_and_Name)myWindow2.myListBoxTypeParameters.SelectedItem).theParameterName)[0];
                        }
                    }

                    if (myParameter != null)
                    {
                        myParameter.Set(myWindow2.myTextBoxNew.Text.ToString());
                        myWindow2.myTextBoxPrevious.Text = myWindow2.myTextBoxNew.Text;
                    }

                    tx.Commit();
                }
            }

            #region catch and finally
            catch (Exception ex)
            {
                _952_PRLoogleClassLibrary.DatabaseMethods.writeDebug("EE17_Edit_StringBasedParameters" + Environment.NewLine + ex.Message + Environment.NewLine + ex.InnerException, true);
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
}
