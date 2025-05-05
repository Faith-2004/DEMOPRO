table 50163 "Financial Ledger"
{
    Caption = 'Financial Ledger';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Financial Ledger"."Entry No.";

            Editable = false;
        }
        field(2; "Student No."; Code[20])
        {

            DataClassification = CustomerContent;
        }
        field(3; "Amount"; Decimal)
        {

        }
        field(4; "Payment Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(5; "Payment Mode"; Option)
        {
            OptionMembers = Cash,Bank;
        }
        field(6; "Cashbook Entry No."; Integer)
        {

        }
        field(7; "Bank Account No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "BankAccount"."EntryNo.";
        }
    }

    keys
    {
        key(PK; "Entry No.")
        { Clustered = true; }
    }
}

