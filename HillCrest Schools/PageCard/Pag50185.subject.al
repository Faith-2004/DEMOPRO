page 50185 subject
{
    Caption = 'subject';
    PageType = Card;
    SourceTable = AllSubjects;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
