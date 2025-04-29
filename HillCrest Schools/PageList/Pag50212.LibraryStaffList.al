page 50212 "LibraryStaff List"
{
    Caption = 'LibraryStaff List';
    PageType = List;
    SourceTable = "Library Staff";
    CardPageId = 50213;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
