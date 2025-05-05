page 50224 CashbookCard
{
    Caption = 'CashbookCard';
    PageType = Card;
    SourceTable = Cashbook;

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
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.', Comment = '%';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Linked Fee Entry No."; Rec."Linked Fee Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Linked Fee Entry No. field.', Comment = '%';
                }
            }
        }
    }
}
