table 50143 AllSubjects
{
    Caption = 'Subjects';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "SubjectID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Department ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Departments".DepartmentID;
        }
    }

    keys
    {
        key(PK; "SubjectID") { Clustered = true; }
    }
}
