page 50119 BorrowerList
{
    Caption = 'Borrower';
    PageType = List;
    SourceTable = Borrower;
    CardPageId = 50120;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
