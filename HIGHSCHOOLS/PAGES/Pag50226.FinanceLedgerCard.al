page 50226 FinanceLedgerCard
{
    Caption = 'FinanceLedgerCard';
    PageType = Card;
    SourceTable = "Financial Ledger";

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
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.', Comment = '%';
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Date field.', Comment = '%';
                }
                field("Payment Mode"; Rec."Payment Mode")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Mode field.', Comment = '%';
                }
                field("Cashbook Entry No."; Rec."Cashbook Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cashbook Entry No. field.', Comment = '%';
                }
                field("Bank Account No."; Rec."Bank Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account No. field.', Comment = '%';
                }
            }
        }
    }
}
