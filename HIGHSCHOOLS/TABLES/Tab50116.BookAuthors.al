table 50116 BookAuthors
{
    Caption = 'BookAuthors';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; AuthorID; Integer)
        {
            Caption = 'AuthorID';
        }
        field(2; Author; Text[50])
        {
            Caption = 'Author';
        }

    }
    keys
    {
        key(PK; AuthorID)
        {
            Clustered = true;
        }
    }
}
