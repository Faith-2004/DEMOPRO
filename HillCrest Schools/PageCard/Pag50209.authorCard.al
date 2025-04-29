page 50209 "author Card"
{
    Caption = 'author Card';
    PageType = Card;
    SourceTable = author;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
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
