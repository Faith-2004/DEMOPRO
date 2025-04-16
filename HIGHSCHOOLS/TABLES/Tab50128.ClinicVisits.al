table 50128 "Clinic Visits"
{


    DataClassification = CustomerContent;

    fields
    {
        field(1; "Visit ID"; Integer)
        {
            Caption = 'Visit ID';

            AutoIncrement = true;
        }
        field(2; "Student ID"; Integer)
        {
            Caption = 'Student ID';

        }
        field(3; "Visit Date"; Date)
        {
            Caption = 'Visit Date';

        }
        field(4; "Diagnosis"; Text[100])
        {
            Caption = 'Diagnosis';

        }
        field(5; "Treatment"; Text[100])
        {
            Caption = 'Treatment';

        }
    }

    keys
    {
        key(PK; "Visit ID") { Clustered = true; }
    }
}


