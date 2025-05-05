page 50228 BankAccountCard
{
    Caption = 'BankAccountCard';
    PageType = Card;
    SourceTable = BankAccount;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
