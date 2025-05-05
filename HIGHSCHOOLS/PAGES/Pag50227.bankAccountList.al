page 50227 bankAccountList
{
    Caption = 'bankAccountList';
    PageType = List;
    SourceTable = BankAccount;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("EntryNo."; Rec."EntryNo.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account No. field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Name field.', Comment = '%';
                }
                field("Account Number"; Rec."Account Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account Number field.', Comment = '%';
                }
                field("Current Balance"; Rec."Current Balance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Current Balance field.', Comment = '%';
                }
            }
        }
    }
}
