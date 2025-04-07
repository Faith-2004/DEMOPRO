table 50120 Subjects
{
    Caption = 'Subjects';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; SubjectId; Integer)
        {
            Caption = 'SubjectId';
        }
        field(2; SubjectName; Text[50])
        {
            Caption = 'SubjectName';
        }
    }
    keys
    {
        key(PK; SubjectId)
        {
            Clustered = true;
        }
    }
}
