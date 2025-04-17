page 50167 "House Master/Mistress Card"
{
    Caption = 'House Master/Mistress Card';
    PageType = Card;
    SourceTable = "House Masters/Mistresses";

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
