﻿using Autodesk.Revit.DB;
using Autodesk.Revit.DB.ExtensibleStorage;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pkRevitDatasheets.BuildingCoderClasses
{
    class JtNamedGuidStorage
    {
        /// <summary>
        /// The extensible storage schema, 
        /// containing one single Guid field.
        /// </summary>
        public static class JtNamedGuidStorageSchema
        {
            public readonly static Guid SchemaGuid = new Guid("{5F374308-9C59-42AE-ACC3-A77EF45EC146}");

            /// <summary>
            /// Retrieve our extensible storage schema 
            /// or optionally create a new one if it does
            /// not yet exist.
            /// </summary>
            public static Schema GetSchema(bool create = true)
            {
                Schema schema = Schema.Lookup(SchemaGuid);

                if (create && null == schema)
                {
                    SchemaBuilder schemaBuilder = new SchemaBuilder(SchemaGuid);

                    schemaBuilder.SetSchemaName("JtNamedGuidStorage");

                    schemaBuilder.AddSimpleField("Guid", typeof(Guid));

                    schema = schemaBuilder.Finish();
                }
                return schema;
            }
        }

        /// <summary>
        /// Retrieve an existing named Guid 
        /// in the specified Revit document or
        /// optionally create and return a new
        /// one if it does not yet exist.
        /// </summary>
        public static bool Get(Document doc, string name, out Guid guid, bool create = true)
        {
            bool rc = false;

            guid = Guid.Empty;

            // Retrieve a DataStorage element with our
            // extensible storage entity attached to it
            // and the specified element name.

            ExtensibleStorageFilter f = new ExtensibleStorageFilter(JtNamedGuidStorageSchema.SchemaGuid);

            DataStorage dataStorage
              = new FilteredElementCollector(doc)
                .OfClass(typeof(DataStorage))
                .WherePasses(f)
                .Where<Element>(e => name.Equals(e.Name))
                .FirstOrDefault<Element>() as DataStorage;

            if (dataStorage == null)
            {
                if (create)
                {
                    using (Transaction t = new Transaction(doc, "Create named Guid storage"))
                    {
                        t.Start();

                        // Create named data storage element

                        dataStorage = DataStorage.Create(doc);
                        dataStorage.Name = name;

                        // Create entity to store the Guid data

                        Entity entity = new Entity(JtNamedGuidStorageSchema.GetSchema());

                        entity.Set("Guid", guid = Guid.NewGuid());

                        // Set entity to the data storage element

                        dataStorage.SetEntity(entity);

                        t.Commit();

                        rc = true;
                    }
                }
            }
            else
            {
                // Retrieve entity from the data storage element.

                Entity entity = dataStorage.GetEntity(JtNamedGuidStorageSchema.GetSchema(false));

                Debug.Assert(entity.IsValid(),"expected a valid extensible storage entity");

                if (entity.IsValid())
                {
                    guid = entity.Get<Guid>("Guid");

                    rc = true;
                }
            }
            return rc;
        }
    }
}
