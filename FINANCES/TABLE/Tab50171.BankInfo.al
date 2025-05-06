table 50171 BankInfo
{
    Caption = 'BankInfo';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Banking ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Banking Record ID';
        }

        field(2; "Account Holder Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Bank Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Branch"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Account Number"; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(6; "Bank Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(7; "SWIFT Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Currency.Code;
        }

        field(9; "Customer/Vendor ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Linked Customer or Vendor';
            TableRelation = if (Type = const(Customer)) "CustomersInfo"."Customer ID"
            else if (Type = const(Vendor)) "VendorsInfo"."Vendor ID";
        }

        field(10; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Customer,Vendor;
            OptionCaption = 'Customer,Vendor';
        }

        field(11; "Is Default"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Banking ID")
        {
            Clustered = true;
        }
    }
}
