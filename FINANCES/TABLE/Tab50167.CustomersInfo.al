table 50167 CustomersInfo
{
    Caption = 'CustomersInfo';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Customer ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer ID';
        }

        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Address"; Text[100])
        {
            DataClassification = CustomerContent;
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

        field(7; "Date Registered"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Is Active"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Customers Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "CustomersPosting Group";
        }
    }

    keys
    {
        key(PK; "Customer ID")
        {
            Clustered = true;
        }
    }
}
