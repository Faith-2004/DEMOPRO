table 50170 "VendorsPosting Group"
{
    Caption = 'VendorsPosting Group';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Vendor Posting Group Code';
        }

        field(2; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Payables Account"; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Payables G/L Account';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting));
        }

        field(4; "Purchase Account"; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Purchase G/L Account';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting));
        }

        field(5; "Discount Account"; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Vendor Discount G/L Account';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting));
        }
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
