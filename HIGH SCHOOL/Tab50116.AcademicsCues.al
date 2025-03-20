table 50116 "Academics Cues"
{
    Caption = 'Academics Cues';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry Number"; Integer)
        {

            AutoIncrement = true;
        }
        field(2; "Accepted Students"; Integer)
        {
            Caption = 'Accepted Students';
            FieldClass = FlowField;
            CalcFormula = Count("Application form.al" WHERE("Application Status" = const(Accepted)));

        }
        field(3; "Rejected students"; Integer)
        {
            Caption = 'Rejected students';
        }
        field(4; "Pending Students"; Integer)
        {
            Caption = 'Pending Students';
        }

    }
    keys
    {
        key(PK; "Entry Number")
        {
            Clustered = true;
        }
    }
}
