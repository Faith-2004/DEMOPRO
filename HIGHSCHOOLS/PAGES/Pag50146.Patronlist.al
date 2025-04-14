page 50146 BookPatronList
{
    Caption = 'Patronlist';
    PageType = List;
    SourceTable = LibraryPatrons;
    CardPageId = 50147;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
