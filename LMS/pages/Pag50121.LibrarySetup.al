page 50121 "Library Setup"
{
    Caption = 'Library Setup';
    PageType = Card;
    SourceTable = "Library Setup";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Card Number"; Rec."Card Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Card Number field.', Comment = '%';
                }
            }
        }
    }
}
