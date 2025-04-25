page 50191 "Subject Teachers"
{
    Caption = 'Subject Teachers';
    PageType = Card;
    SourceTable = SubjectTeacher;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
