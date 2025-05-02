page 50222 FeePaymentEntry
{
    Caption = 'FeePaymentEntry';
    PageType = Card;
    SourceTable = "Fee Ledger Entry";

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
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Date field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(Debit; Rec.Debit)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Debit field.', Comment = '%';
                }
                field(Credit; Rec.Credit)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Credit field.', Comment = '%';
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
}
