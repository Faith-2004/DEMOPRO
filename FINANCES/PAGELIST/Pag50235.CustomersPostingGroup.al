page 50235 "CustomersPosting Group"
{
    Caption = 'CustomersPosting Group';
    PageType = List;
    SourceTable = "CustomersPosting Group";
    CardPageId = 50236;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Posting Group Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Receivables Account"; Rec."Receivables Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receivables G/L Account field.', Comment = '%';
                }
                field("Service Charges Account"; Rec."Service Charges Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Service Charges Account field.', Comment = '%';
                }
                field("Discount Account"; Rec."Discount Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Account field.', Comment = '%';
                }
            }
        }
    }
}
