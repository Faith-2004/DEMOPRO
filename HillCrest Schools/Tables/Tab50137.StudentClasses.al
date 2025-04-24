table 50137 "Student Classes"
{
    Caption = 'Student Classes';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Class ID"; Code[20])
        {
            Caption = 'Class ID';
        }
        field(2; "Class Name"; Code[20])
        {
            Caption = 'Class Name';
        }
        field(3; Capacity; Integer)
        {
            Caption = 'Capacity';
        }
        field(4; "Class Teacher"; Text[100])
        {
            Caption = 'Class Teacher';
        }
    }
    keys
    {
        key(PK; "Class ID")
        {
            Clustered = true;
        }
    }
}
