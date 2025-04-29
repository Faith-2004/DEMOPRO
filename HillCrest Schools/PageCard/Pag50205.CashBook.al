page 50205 CashBookEntry
{
    Caption = 'CashBook';
    PageType = Card;
    SourceTable = "Cash Book";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Date field.', Comment = '%';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Type field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Reference No."; Rec."Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reference No. field.', Comment = '%';
                }
                field("Amount In"; Rec."Amount In")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount In field.', Comment = '%';
                }
                field("Amount Out"; Rec."Amount Out")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount Out field.', Comment = '%';
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance field.', Comment = '%';
                }
                field(LastEntry; Rec.LastEntry)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LastEntry field.', Comment = '%';
                }
            }
        }
    }
    actions
    {

        area(processing)
        {
            action("Post Cash Receipt")
            {
                ApplicationArea = All;
                Caption = 'Post Cash Receipt';

                trigger OnAction()
                var
                    CashMgmt: Codeunit "Cash Book Entry";
                begin
                    CashMgmt.PostCashTransaction(
                        Today,
                        0,
                        'School Fees Payment',
                        FORMAT(Rec."Entry No."),
                        00.00,
                        0.00
                    );
                    Message('Cash receipt posted.');
                end;
            }
        }
    }
}