page 50186 departments
{
    Caption = 'departments';
    PageType = List;
    SourceTable = Departments;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
