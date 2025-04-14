page 50145 BorrowersCard
{
    Caption = 'BorrowersCard';
    PageType = Card;
    SourceTable = BookBorrowers;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(BorrowerID; Rec.BorrowerID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BorrowerID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Card Number"; Rec."Card Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Card Number field.', Comment = '%';
                }
                field("phone number"; Rec."phone number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the phone number field.', Comment = '%';
                }
            }
        }
    }
}
