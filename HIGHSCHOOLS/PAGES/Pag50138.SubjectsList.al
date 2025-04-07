page 50138 SubjectsList
{
    Caption = 'SubjectsList';
    PageType = List;
    SourceTable = Subjects;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
    actions

    {

        area(Processing)
        {
            action("Open SubjectsCard")
            {
                Caption = 'View Subjects';
                ApplicationArea = All;
                RunObject = Page "SubjectsCard";
                RunPageLink = "SubjectID" = field(SubjectID);
            }
        }
    }
}
