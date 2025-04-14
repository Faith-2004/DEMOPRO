table 50124 Booklendings
{
    Caption = 'Booklendings';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; LendingID; Integer)
        {
            Caption = 'LendingID';
        }
        field(2; StudentID; Integer)
        {
            Caption = 'StudentID';
        }
        field(3; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(4; BookId; Integer)
        {
            Caption = 'BookId';
        }
        field(5; Booktitle; Text[100])
        {
            Caption = 'Booktitle';
        }
        field(6; DueDate; Date)
        {
            Caption = 'DueDate';
        }

        field(7; Status; Option)
        {
            OptionMembers = Open,PendingApproval,Approved,Rejected;
            OptionCaption = 'Open,PendingApproval,Approved,Rejected';
        }
    }
    keys
    {
        key(PK; LendingID)
        {
            Clustered = true;
        }
    }
}
