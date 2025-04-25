page 50174 Class
{
    Caption = 'ClassList';
    PageType = List;
    SourceTable = "Student Classes";
    CardPageId = 50175;

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
                field("Class Name"; Rec."Class Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class Name field.', Comment = '%';
                }
                field(Capacity; Rec.Capacity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Capacity field.', Comment = '%';
                }
                field("Class Teacher"; Rec."Class Teacher")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class Teacher field.', Comment = '%';
                }
            }
        }
    }
}
