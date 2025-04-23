table 50125 "Libr Setup"
{
    Caption = 'Libr Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
        }
        field(2; "Card Number"; Code[50])
        {
            Caption = 'Card Number';
            TableRelation = "No. Series";
        }
        field(3; StudentApplicationNo; Code[20])
        {
            Caption = 'AppNo.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
