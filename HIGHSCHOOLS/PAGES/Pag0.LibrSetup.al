page 50150 "Libr Setup"
{
    Caption = 'Libr Setup';
    PageType = Card;
    SourceTable = "Libr Setup";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Primary Key field.', Comment = '%';
                }
                field("Card Number"; Rec."Card Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Card Number field.', Comment = '%';
                }
            }
        }
    }
}
