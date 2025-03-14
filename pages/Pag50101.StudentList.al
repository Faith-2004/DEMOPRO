page 50101 StudentList
{
    Caption = 'StudentList';
    PageType = List;
    SourceTable = StudentRecords;

    layout
    {
        area(Content)
        {
            repeater(Students)
            {
                field(StudentId; Rec.StudentId)
                {
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                }
                field(School; Rec.School)
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;
                }
                field(Semester; Rec.Semester)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Open Student Card")
            {
                Caption = 'View Student';
                ApplicationArea = All;
                RunObject = Page "StudentCard";
                RunPageLink = StudentId = field(StudentId);
            }
        }
    }
}


