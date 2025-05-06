table 50169 "CustomersPosting Group"
{
    Caption = 'CustomersPosting Group';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Posting Group Code';
        }

        field(2; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Receivables Account"; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Receivables G/L Account';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting));
        }

        field(4; "Service Charges Account"; Code[20])
        {
            DataClassification = AccountData;
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting));
        }

        field(5; "Discount Account"; Code[20])
        {
            DataClassification = AccountData;
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
