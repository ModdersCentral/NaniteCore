# NaniteCore
Simple easy to use .NET Database.

#NOT READY FOR USE YET

v1.0.0.0 Examples 

**layout Could change at any time, Though it will be some-what backwards-compatible with the old layout***

      Dim MyTable as new DataTable("Table_name_here")
      MyTable.AddColumn("username", column_Types.String, 255)'we add a string column that has 255 as the max characters
      MyTable.AddColumn("isSomethingTrue",column_Types.boolean,0) 'we add a true/false column (size doesn't matter)
      MyTable.AddColumn("rank",column_Types.integer,2147683) 'integer, enter the size of the maximum number
      MyTable.AddColumn("time",column_Types.datetime,0) 'saves a date
      Dim MyDatabase as new Database(MyTable)
      MessageBox.Show(MyDatabase.TotalRows) 'gets the total rows (Doesn't count deleted rows)


v1.0.0.0 Table Scheme (TBD - To Be Decided)

| Data Name    | Type   | Value       | Notes                                                     |   |
|--------------|--------|-------------|-----------------------------------------------------------|---|
| Magic        | n/a    | NCND        | To check if valid file                                    |   |
| Version      | Int32  | 00 00 00 00 | For Backwards Compatibility                               |   |
| Column Count | UInt16 | 00 00       | For Quick loading Columns, and, calculating header height |   |