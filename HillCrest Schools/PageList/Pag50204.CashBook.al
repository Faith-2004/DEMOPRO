page 50204 CashBook
{
    Caption = 'CashBook';
    PageType = List;
    SourceTable = "Cash Book";
    CardPageId = 50205;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
}
