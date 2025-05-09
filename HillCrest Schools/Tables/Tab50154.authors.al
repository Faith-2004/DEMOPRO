table 50154 author
{
    Caption = 'authors';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Author ID"; Code[30])
        {
            Caption = 'Author ID';
        }
        field(2; "Author Name"; Text[50])
        {
            Caption = 'Author Name';
        }
    }
    keys
    {
        key(PK; "Author ID")
        {
            Clustered = true;
        }
    }
}
