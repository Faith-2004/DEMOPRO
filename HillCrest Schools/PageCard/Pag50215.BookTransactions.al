page 50215 "BookTransactions"
{
    Caption = 'Book Transactions';
    PageType = Card;
    SourceTable = "Book Transactions";

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
    actions
    {
        area(Processing)
        {

            action(Submit)
            {
                Caption = 'Submit';
                ApplicationArea = All;
                Image = SendApprovalRequest;
                Visible = (Rec.Status = Rec.Status::Open);
                trigger OnAction()
                begin
                    Rec.Status := Rec.Status::PendingApproval;
                    Rec.Modify();
                end;
            }
            action(Approve)
            {
                Caption = 'Approved';
                ApplicationArea = all;
                Image = SendConfirmation;
                Visible = rec.status = Rec.status::PendingApproval;
                trigger OnAction()
                var
                    BkLending: Record "Book Transactions";
                begin
                    rec.Status := BkLending.Status::Approved;
                end;
            }
            action(Reject)
            {
                Caption = 'Reject';
                ApplicationArea = all;
                Image = SendConfirmation;
                Visible = rec.status = Rec.status::PendingApproval;
                trigger OnAction()
                var
                    BkLending: Record "Book Transactions";
                begin
                    rec.Status := BkLending.Status::RejectedApprovals;
                end;
            }
        }
    }
}

