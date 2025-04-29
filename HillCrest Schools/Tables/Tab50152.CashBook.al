table 50152 "Cash Book"
{
    Caption = 'Cash Book';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = SystemMetadata;
        }

        field(2; "Transaction Date"; Date)
        {
            DataClassification = AccountData;
        }

        field(3; "Transaction Type"; Option)
        {
            OptionMembers = "Fee Receipt","Payment","Donation","Other";
            DataClassification = AccountData;
        }

        field(4; "Description"; Text[100])
        {
            DataClassification = AccountData;
        }

        field(5; "Reference No."; Code[20])
        {
            DataClassification = AccountData;
        }

        field(6; "Amount In"; Decimal)
        {
            DataClassification = AccountData;
        }

        field(7; "Amount Out"; Decimal)
        {
            DataClassification = AccountData;
        }

        field(8; Balance; Decimal)
        {
            DataClassification = AccountData;
        }
        field(9; LastEntry; Decimal)
        {
            DataClassification = ToBeClassified;
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
