page 50134 ClassList
{
    Caption = 'ClassList';
    PageType = List;
    SourceTable = Class;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
    actions

    {

        area(Processing)
        {
            action("Open ClassCard")
            {
                Caption = 'View Classes';
                ApplicationArea = All;
                RunObject = Page "ClassCard";
                RunPageLink = "Class ID" = field("Class ID");
            }
        }
    }
}
