page 50117 "Authors List"
{
    Caption = 'Authors List';
    PageType = List;
    SourceTable = Authors;
    CardPageId = 50118;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Author ID"; Rec."Author ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author ID field.', Comment = '%';
                }
                field("Author Name"; Rec."Author Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author Name field.', Comment = '%';
                }
            }
        }
    }
}
