table 50129 "Displinary Issues"
{
    Caption = 'Displinary Issues';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "RecordID"; Integer)
        {
            Caption = 'Record ID';
        }
        field(2; "StudentID"; Integer)
        {
            Caption = 'Student ID';
        }
        field(3; StudentName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "InfractionType"; Text[100])
        {
            Caption = 'Infraction Type';
        }
        field(5; "ActionTaken"; Text[100])
        {
            Caption = 'Action Taken';
        }
        field(6; "Comments"; Text[250])
        {
            Caption = 'Comments';
        }
        field(7; "Date"; Date)
        {
            Caption = 'Date';
        }
    }

    keys
    {
        key(PK; "RecordID")
        {
            Clustered = true;
        }
    }
}


