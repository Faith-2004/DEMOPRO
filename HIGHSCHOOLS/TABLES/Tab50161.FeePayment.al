table 50161 "Fee Payment"
{
    Caption = 'Fee Payment';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Receipt No."; Code[20])
        {
            DataClassification = ToBeClassified;


        }
        field(2; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = HillCrestRecords."Student ID";

        }
        field(3; "Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Amount Paid"; Decimal)
        {
            DataClassification = ToBeClassified;

        }

        field(6; "Posted"; Boolean)
        {
            DataClassification = ToBeClassified;

        }
    }
    keys
    {
        key(PK; "Receipt No.") { Clustered = true; }
    }
}
