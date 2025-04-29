page 50208 authorList
{
    Caption = 'authorList';
    PageType = List;
    SourceTable = author;
    CardPageId = 50209;

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
