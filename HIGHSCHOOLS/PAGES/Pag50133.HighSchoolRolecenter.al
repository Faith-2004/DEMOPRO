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
                action(AdmittedStudents)
                {
                    Caption = 'AdmittedList';
                    ApplicationArea = All;
                    RunObject = page "AdmittedList";
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
            group(LibraryManagement)
            {
                action(Bookslist)
                {
                    Caption = 'Books';
                    ApplicationArea = All;
                    RunObject = page "BooksList";

                }
                action(BookAuthors)
                {
                    Caption = 'Authors';
                    ApplicationArea = All;
                    RunObject = page "AuthorsList";
                }
                action(BorrowersList)
                {
                    Caption = 'Borrowers';
                    ApplicationArea = All;
                    RunObject = page "BorrowersList";
                }
                action(Booklendings)
                {
                    Caption = 'Lendings';
                    ApplicationArea = All;
                    RunObject = page "LendingList";
                }
            }
        }
    }

}
