table 50119 Teachers
{
    Caption = 'Teachers';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; TeacherID; Integer)
        {
            Caption = 'TeacherID';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Department; Text[50])
        {
            Caption = 'Department';
        }
    }
    keys
    {
        key(PK; TeacherID)
        {
            Clustered = true;
        }
    }
}
