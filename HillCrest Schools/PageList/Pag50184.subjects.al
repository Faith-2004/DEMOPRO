page 50184 subjects
{
    Caption = 'subjects';
    PageType = List;
    SourceTable = AllSubjects;
    CardPageId = 50185;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(SubjectID; Rec.SubjectID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SubjectID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Department ID"; Rec."Department ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department ID field.', Comment = '%';
                }
            }
        }
    }
}
