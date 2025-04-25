page 50187 "Departments Card"
{
    Caption = 'Departments Card';
    PageType = Card;
    SourceTable = Departments;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(DepartmentID; Rec.DepartmentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DepartmentID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
            }
        }
    }
}
