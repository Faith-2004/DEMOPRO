page 50141 TimetableCard
{
    Caption = 'TimetableCard';
    PageType = Card;
    SourceTable = Timetable;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(TimetableID; Rec.TimetableID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TimetableID field.', Comment = '%';
                }
                field(SubjectID; Rec.SubjectID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SubjectID field.', Comment = '%';
                }
                field(TeacherID; Rec.TeacherID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TeacherID field.', Comment = '%';
                }
                field(ClassID; Rec.ClassID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ClassID field.', Comment = '%';
                }
                field(Day; Rec.Day)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Day field.', Comment = '%';
                }
                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Time field.', Comment = '%';
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Time field.', Comment = '%';
                }
            }
        }
    }
}
