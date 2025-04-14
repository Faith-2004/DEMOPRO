table 50115 LibraryBooks
{
    Caption = 'LibraryBooks';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; BooksId; Integer)
        {
            Caption = 'BooksId';
        }
        field(2; BookName; Text[50])
        {
            Caption = 'BookName';
        }
        field(3; Author; Text[50])
        {
            Caption = 'Author';
        }
        field(4; Publisher; Text[50])
        {
            Caption = 'Publisher';
        }
        field(5; "ISBN   "; Code[50])
        {
            Caption = 'ISBN   ';
        }
    }
    keys
    {
        key(PK; BooksId)
        {
            Clustered = true;
        }
    }
}
