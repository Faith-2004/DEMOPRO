page 50136 TeachersList
{
    Caption = 'TeachersList';
    PageType = List;
    SourceTable = Teachers;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(TeacherID; Rec.TeacherID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TeacherID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department field.', Comment = '%';
                }
            }
        }
    }
}
