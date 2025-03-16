page 50125 "BookLending Card"
{
    Caption = 'BookLending Card';
    PageType = Card;
    SourceTable = "Book Lending";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {

            action(Submit)
            {
                Visible = rec.status = Rec.status::open;
                trigger OnAction()
                var
                    BkLending: Record "Book Lending";
                begin
                    rec.Status := BkLending.Status::PendingApproval;
                end;
            }
            action(Approve)
            {
                Visible = rec.status = Rec.status::PendingApproval;
                trigger OnAction()
                var
                    BkLending: Record "Book Lending";
                begin
                    rec.Status := BkLending.Status::Approved;
                end;
            }
            action(Reject)
            {
                Visible = rec.status = Rec.status::PendingApproval;
                trigger OnAction()
                var
                    BkLending: Record "Book Lending";
                begin
                    rec.Status := BkLending.Status::RejectedApprovals;
                end;
            }
        }
    }
}
