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
            part(Cues; "SchoolCues")
            {
                ApplicationArea = Basic, Suite;
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
            group(MedicalRecords)
            {
                action(StudentMedicalRecords)
                {
                    Caption = 'Student Medical Records';
                    ApplicationArea = All;
                    RunObject = page "Student Medical Records";
                }
                action(ClinicVisits)
                {
                    Caption = 'Clinic Visits';
                    ApplicationArea = All;
                    RunObject = page "Clinic Visits";
                }
            }
            group(Disciplinary)
            {
                action(DisciplinaryIssues)
                {
                    Caption = 'Disciplinary Issues';
                    ApplicationArea = All;
                    RunObject = page "Disciplinary List";
                }
            }
        }
        area(Embedding)
        {
            action(Setup)
            {
                ApplicationArea = Basic, Suite;
                RunObjecT = page "Libr Setup";

            }

        }
    }

}
