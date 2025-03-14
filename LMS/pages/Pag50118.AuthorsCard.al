page 50118 "Authors Card"
{
    Caption = 'Authors Card';
    PageType = Card;
    SourceTable = Authors;
    
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
