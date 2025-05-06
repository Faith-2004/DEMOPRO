table 50168 VendorsInfo
{
    Caption = 'VendorsInfo';
    DataClassification = ToBeClassified;



    fields
    {
        field(1; "Vendor ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Vendor ID';
        }

        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Address"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "City"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Phone No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(6; "Email"; Text[80])
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Tax ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(9; "Is Active"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Vendor Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VendorsPosting Group";
        }

        field(11; "Payment Terms Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Payment Terms";
        }

        field(12; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Currency.Code;
        }

        field(13; "Balance (LCY)"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Vendor Ledger Entry"."Amount (LCY)" WHERE("Vendor No." = FIELD("Vendor ID")));
            Editable = false;
        }


    }

    keys
    {
        key(PK; "Vendor ID")
        {
            Clustered = true;
        }
    }
}
