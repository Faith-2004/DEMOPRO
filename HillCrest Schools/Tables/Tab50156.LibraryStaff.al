table 50156 "Library Staff"
{
    Caption = 'Library Staff';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Patron Id"; Integer)
        {
            Caption = 'Patron Id';
        }
        field(2; "Patron Name"; Text[50])
        {
            Caption = 'Patron Name';
        }
    }
    keys
    {
        key(PK; "Patron Id")
        {
            Clustered = true;
        }
    }
}
