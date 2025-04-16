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
        field(3; "InfractionType"; Text[100])
        {
            Caption = 'Infraction Type';
        }
        field(4; "ActionTaken"; Text[100])
        {
            Caption = 'Action Taken';
        }
        field(5; "Comments"; Text[250])
        {
            Caption = 'Comments';
        }
        field(6; "Date"; Date)
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


