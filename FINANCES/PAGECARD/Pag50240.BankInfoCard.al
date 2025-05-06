page 50240 "BankInfo Card"
{
    Caption = 'BankInfo Card';
    PageType = Card;
    SourceTable = BankInfo;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Banking ID"; Rec."Banking ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Banking Record ID field.', Comment = '%';
                }
                field("Account Holder Name"; Rec."Account Holder Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account Holder Name field.', Comment = '%';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Name field.', Comment = '%';
                }
                field(Branch; Rec.Branch)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch field.', Comment = '%';
                }
                field("Account Number"; Rec."Account Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account Number field.', Comment = '%';
                }
                field("Bank Code"; Rec."Bank Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Code field.', Comment = '%';
                }
                field("SWIFT Code"; Rec."SWIFT Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SWIFT Code field.', Comment = '%';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Code field.', Comment = '%';
                }
                field("Customer/Vendor ID"; Rec."Customer/Vendor ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Linked Customer or Vendor field.', Comment = '%';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.', Comment = '%';
                }
                field("Is Default"; Rec."Is Default")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Is Default field.', Comment = '%';
                }
            }
        }
    }
}
