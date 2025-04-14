page 50147 BookPartonCard
{
    Caption = 'BookPartonCard';
    PageType = Card;
    SourceTable = LibraryPatrons;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(PatronID; Rec.PatronID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PatronID field.', Comment = '%';
                }
                field(PatronName; Rec.PatronName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
            }
        }
    }
}
