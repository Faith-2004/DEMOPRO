table 50118 Class
{
    Caption = 'Class';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Class ID"; Integer)
        {
            Caption = 'Class ID';
        }
        field(2; ClassName; Code[10])
        {
            Caption = 'ClassName';
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
