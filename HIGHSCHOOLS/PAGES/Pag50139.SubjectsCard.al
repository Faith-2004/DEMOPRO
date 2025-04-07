page 50139 SubjectsCard
{
    Caption = 'SubjectsCard';
    PageType = Card;
    SourceTable = Subjects;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(SubjectId; Rec.SubjectId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SubjectId field.', Comment = '%';
                }
                field(SubjectName; Rec.SubjectName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SubjectName field.', Comment = '%';
                }
            }
        }
    }
}
