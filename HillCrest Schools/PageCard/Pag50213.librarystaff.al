page 50213 "library staff"
{
    Caption = 'library staff';
    PageType = Card;
    SourceTable = "Library Staff";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Patron Id"; Rec."Patron Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Id field.', Comment = '%';
                }
                field("Patron Name"; Rec."Patron Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Name field.', Comment = '%';
                }
            }
        }
    }
}
