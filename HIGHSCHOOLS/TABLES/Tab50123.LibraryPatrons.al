table 50123 LibraryPatrons
{
    Caption = 'LibraryPatrons';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PatronID; Integer)
        {
            Caption = 'PatronID';
        }
        field(2; PatronName; Text[50])
        {
            Caption = 'Name';
        }

    }
    keys
    {
        key(PK; PatronID)
        {
            Clustered = true;
        }
    }
}
