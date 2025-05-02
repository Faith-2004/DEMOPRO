page 50221 "fee payment"
{
    Caption = 'fee payment';
    PageType = List;
    SourceTable = "Fee Payment Entry";
    CardPageId = 50222;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Receipt No."; Rec."Receipt No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receipt No. field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.', Comment = '%';
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount Paid field.', Comment = '%';
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posted field.', Comment = '%';
                }
            }
        }
    }
}
