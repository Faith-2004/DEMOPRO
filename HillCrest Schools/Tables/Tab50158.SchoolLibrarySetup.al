table 50158 "SchoolLibrary Setup"
{
    Caption = 'SchoolLibrary Setup';
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
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
