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
        field(8; StudentID; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Financial Ledger"."Student No.";
        }


        field(2; "Date"; Date)
        {
            DataClassification = ToBeClassified;
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
