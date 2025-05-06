table 50172 "BanksPostings "
{
    Caption = 'BanksPostings ';
    DataClassification = ToBeClassified;



    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(2; "Posting Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Banking ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Linked Banking Account';
            TableRelation = "BankInfo"."Banking ID";
        }

        field(4; "Transaction Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Deposit,Withdrawal,Payment,Transfer;
            OptionCaption = 'Deposit,Withdrawal,Payment,Transfer';
        }

        field(5; "Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(6; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Currency.Code;
        }

        field(7; "Account Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = G_L_Account,Customer,Vendor;
            OptionCaption = 'G/L Account,Customer,Vendor';
        }

        field(8; "Account No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Posting Account No.';
        }

        field(9; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Posted By"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(11; "Posting Time"; Time)
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
