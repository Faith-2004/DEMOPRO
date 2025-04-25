page 50190 "Subject Teacher"
{
    Caption = 'Subject Teacher';
    PageType = List;
    SourceTable = SubjectTeacher;
    CardPageId = 50191;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Subject ID"; Rec."Subject ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subject ID field.', Comment = '%';
                }
                field("Teacher ID"; Rec."Teacher ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher ID field.', Comment = '%';
                }
            }
        }
    }
}
