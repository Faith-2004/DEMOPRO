table 50144 Departments
{
    Caption = 'Departments';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "DepartmentID"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; DepartmentID) { Clustered = true; }
    }
}

