page 50120 "Borrowers Card"
{
    Caption = 'Borrowers Card';
    PageType = Card;
    SourceTable = Borrower;


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Borrower ID"; Rec."Borrower ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Borrower ID field.', Comment = '%';
                }
                field("Borrower Name"; Rec."Borrower Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Borrower Name field.', Comment = '%';
                }
                field("Card Number"; Rec."Card Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Card Number field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }
            }
        }
    }
}
