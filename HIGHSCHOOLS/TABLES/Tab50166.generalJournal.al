table 50166 generalJournals
{
    Caption = 'generalJournal';
    DataClassification = ToBeClassified;



    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            DataClassification = SystemMetadata;
        }

        field(2; "Line No."; Integer)
        {
            DataClassification = SystemMetadata;
        }

        field(3; "Account Type"; Enum "Gen. Journal Account Type")
        {
            DataClassification = CustomerContent;
        }

        field(4; "Account No."; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(5; "Posting Date"; Date)
        {
            DataClassification = CustomerContent;
        }

        field(6; "Document Type"; Enum "Gen. Journal Document Type")
        {
            DataClassification = CustomerContent;
        }

        field(7; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(8; Description; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(9; "VAT %"; Decimal)
        {
            DataClassification = CustomerContent;
        }

        field(10; "Bal. Account No."; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(11; "Currency Code"; Code[10])
        {
            DataClassification = CustomerContent;
        }

        field(12; Amount; Decimal)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Journal Template Name", "Line No.")
        {
            Clustered = true;
        }
    }
}
