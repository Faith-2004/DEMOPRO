page 50237 "VendorsPosting Group"
{
    Caption = 'VendorsPosting Group';
    PageType = List;
    SourceTable = "VendorsPosting Group";
    CardPageId = 50238;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Posting Group Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Payables Account"; Rec."Payables Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payables G/L Account field.', Comment = '%';
                }
                field("Purchase Account"; Rec."Purchase Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase G/L Account field.', Comment = '%';
                }
                field("Discount Account"; Rec."Discount Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Discount G/L Account field.', Comment = '%';
                }
            }
        }
    }
}
