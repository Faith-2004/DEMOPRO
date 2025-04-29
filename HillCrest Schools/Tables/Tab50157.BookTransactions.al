table 50157 "Book Transactions"
{
    Caption = 'Book Transactions';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Lending ID"; Integer)
        {
            Caption = 'Lending ID';
            AutoIncrement = true;
        }
        field(2; "Borrower ID"; Integer)
        {
            Caption = 'Borrower ID';
            trigger OnValidate()
            var
                Borrower: Record Borrower;
            begin
                if Borrower.Get("Borrower ID")
                then begin
                    "Borrower Name" := Borrower."Borrower Name";
                end;

            end;
        }
        field(3; "Borrower Name"; Text[50])
        {
            Caption = 'Borrower Name';
        }
        field(4; "Boook ID"; Code[50])
        {
            Caption = 'Book ID';
        }
        field(5; "Book Name"; Code[50])
        {
            Caption = 'Book Name';
        }
        field(6; "Borrowing Date"; Date)
        {
            Caption = 'Borrowing Date';
        }
        field(7; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(8; "Return Date"; Date)
        {
            Caption = 'Return Date';
        }
        field(9; Status; Option)
        {
            OptionMembers = Open,PendingApproval,Approved,RejectedApprovals;
            OptionCaption = 'Open, Pending Approval,Approved,RejectedApprovals';
        }
        field(10; Fine; Decimal)
        {
            Caption = 'Fine';
        }
    }
    keys
    {
        key(PK; "Lending ID")
        {
            Clustered = true;
        }
    }
}
