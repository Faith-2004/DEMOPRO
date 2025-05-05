table 50164 Cashbook
{
    Caption = 'Cashbook';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
            TableRelation = Cashbook."Entry No.";
        }
        field(2; "Date"; Date)
        {

        }
        field(3; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(4; "Description"; Text[100])
        {

        }
        field(5; "Linked Fee Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = "Financial Ledger"."Entry No.";
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
