page 50124 "BookLending List"
{
    Caption = 'BookLending List';
    PageType = List;
    SourceTable = "Book Lending";
    CardPageId = 50125;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("LendingID"; Rec."Lending ID")
                {
                    ApplicationArea = All;
                }
                field("Borrower ID"; Rec."Borrower ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Borrower ID field.', Comment = '%';
                }
                field("Borrower Name"; Rec."Borrower Name")
                {
                    ApplicationArea = All;
                }
                field("Boook ID"; Rec."Boook ID")
                {
                    ApplicationArea = All;
                }
                field("Book Name"; Rec."Book Name")
                {
                    ApplicationArea = All;
                }
                field("Borrowing Date"; Rec."Borrowing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Borrowing Date field.', Comment = '%';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field(Fine; Rec.Fine)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fine field.', Comment = '%';
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
                    Editable = false;
                }
            }
        }
    }
}
