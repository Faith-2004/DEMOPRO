page 50166 "House Masters/Mistress List"
{
    Caption = 'House Masters/Mistress List';
    PageType = List;
    SourceTable = "House Masters/Mistresses";

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
                field(HouseCode; Rec.HouseCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HouseCode field.', Comment = '%';
                }
                field(HouseName; Rec.HouseName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HouseName field.', Comment = '%';
                }
            }
        }
    }
}
