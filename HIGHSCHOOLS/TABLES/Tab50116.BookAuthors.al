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
        field(2; AuthorName; Text[50])
        {
            Caption = 'AuthorName';
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
