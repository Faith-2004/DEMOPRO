page 50180 "Invoice List"
{
    Caption = 'Invoice List';
    PageType = List;
    SourceTable = "Fee Invoice";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Invoice ID"; Rec."Invoice ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice ID field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student Name field.', Comment = '%';
                }
                field("Fee Structure ID"; Rec."Fee Structure ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fee Structure ID field.', Comment = '%';
                }
                field("Discount Amount"; Rec."Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice discount field.', Comment = '%';

                }
                field("Invoice Date"; Rec."Invoice Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Date field.', Comment = '%';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.', Comment = '%';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Amount field.', Comment = '%';
                }
                field("Status "; Rec."Status ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status  field.', Comment = '%';
                }
            }
        }
    }
}
