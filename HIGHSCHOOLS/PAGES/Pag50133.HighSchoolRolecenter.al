page 50133 HighSchoolRolecenter
{
    Caption = 'HighSchoolRolecenter';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Team Member")
            {
                ApplicationArea = All;
            }

        }
    }
    actions
    {
        area(Sections)
        {
            group(StudentApplications)
            {
                action(ApplicationLists)
                {
                    Caption = 'Application List';
                    ApplicationArea = All;
                    RunObject = page "ApplicationLists";

                }
            }
            group(TimetableManagement)
            {
                action(TeachersList)
                {
                    Caption = 'Teachers';
                    ApplicationArea = All;
                    RunObject = page "TeachersList";

                }
                action(SubjectsList)
                {
                    Caption = 'Subjects';
                    ApplicationArea = All;
                    RunObject = page "SubjectsList";

                }
                action(ClassList)
                {
                    Caption = 'Classes';
                    ApplicationArea = All;
                    RunObject = page "ClassList";
                }
                action(Timetable)
                {
                    Caption = 'Timetable';
                    ApplicationArea = All;
                    RunObject = page "TimetableList";
                }
            }
        }
    }

}
