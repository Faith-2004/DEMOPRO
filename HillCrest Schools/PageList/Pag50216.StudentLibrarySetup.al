page 50216 "StudentLibrary Setup"
{
    Caption = 'StudentLibrary Setup';
    PageType = List;
    SourceTable = "SchoolLibrary Setup";
    CardPageId = 50217;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
