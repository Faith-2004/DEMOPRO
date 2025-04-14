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
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; ""; )
        {
            Caption = '';
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
