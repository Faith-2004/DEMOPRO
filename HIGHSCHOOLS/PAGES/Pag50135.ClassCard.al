page 50135 ClassCard
{
    Caption = 'ClassCard';
    PageType = Card;
    SourceTable = Class;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Class ID"; Rec."Class ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class ID field.', Comment = '%';
                }
                field(ClassName; Rec.ClassName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ClassName field.', Comment = '%';
                }
            }
        }
    }
}
