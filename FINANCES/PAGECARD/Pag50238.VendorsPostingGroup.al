page 50238 "Vendors PostingGroup"
{
    Caption = 'Vendors PostingGroup';
    PageType = Card;
    SourceTable = "VendorsPosting Group";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
