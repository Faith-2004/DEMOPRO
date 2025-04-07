page 50137 TeachersCard
{
    Caption = 'TeachersCard';
    PageType = Card;
    SourceTable = Teachers;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
