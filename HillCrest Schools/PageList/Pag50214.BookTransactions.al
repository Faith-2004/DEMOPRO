page 50214 "Book Transactions"
{
    Caption = 'Book Transactions';
    PageType = List;
    SourceTable = "Book Transactions";
    CardPageId = 50215;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Lending ID"; Rec."Lending ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending ID field.', Comment = '%';
                }
                field("Borrower ID"; Rec."Borrower ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Borrower ID field.', Comment = '%';
                }
                field("Borrower Name"; Rec."Borrower Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Borrower Name field.', Comment = '%';
                }
                field("Boook ID"; Rec."Boook ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book ID field.', Comment = '%';
                }
                field("Book Name"; Rec."Book Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book Name field.', Comment = '%';
                }
                field("Borrowing Date"; Rec."Borrowing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Borrowing Date field.', Comment = '%';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.', Comment = '%';
                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Date field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field(Fine; Rec.Fine)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fine field.', Comment = '%';
                }
            }
        }
    }
}
