table 50153 books
{
    Caption = 'LibraryBooks';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book ID"; Code[20])
        {
            Caption = 'Book ID';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Author; Text[50])
        {
            Caption = 'Author';
        }
        field(4; Publisher; Text[50])
        {
            Caption = 'Publisher';
        }
        field(5; "ISBN Number"; Code[50])
        {
            Caption = 'ISBN Number';
        }
        field(6; "Category"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; Status; Option)
        {
            OptionMembers = Issued,Booked,Available;
            OptionCaption = 'Issued,Available,Booked';
        }
        field(8; borrowed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }
}
