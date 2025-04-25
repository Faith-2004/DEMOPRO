page 50173 "HillCrest RoleCenter"
{
    Caption = 'HillCrest RoleCenter';
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
            group(StudentRecords)
            {
                action(StudentApplications)
                {
                    ApplicationArea = All;
                    Caption = 'Student Applications';
                    RunObject = page HCApplication;
                }
                action(StudentsAdmitted)
                {
                    ApplicationArea = All;
                    Caption = 'Student Records';
                    RunObject = page HCRecords;
                }
            }
            group(Finance)
            {
                action(Fees)
                {
                    ApplicationArea = All;
                    Caption = 'Student Fees';
                    RunObject = page "Invoice List";
                }
                action(Sponsorship)
                {
                    ApplicationArea = All;
                    Caption = 'Scholarships';
                    RunObject = page "Scholarship List";
                }
                action(FeeStructure)
                {
                    ApplicationArea = All;
                    Caption = 'Fee Structure';
                    RunObject = page "Fee Structure";
                }
            }
            group(TimetableManagement)
            {
                action(Timetables)
                {
                    ApplicationArea = All;
                    Caption = 'Timetable';
                    RunObject = page Timetable;
                }
                action(SubjectTeachers)
                {
                    ApplicationArea = all;
                    Caption = 'Subject Teachers';
                    RunObject = page "Subject Teacher";
                }

            }

        }
        area(Embedding)
        {
            action(classes)
            {
                ApplicationArea = All;
                Caption = 'Classes';
                RunObject = page Class;
            }
            action(teachers)
            {
                ApplicationArea = All;
                Caption = 'Teachers';
                RunObject = page Teachers;
            }
            action(subjects)
            {
                ApplicationArea = All;
                Caption = 'Subjects';
                RunObject = page subjects;
            }

            action(departments)
            {
                ApplicationArea = All;
                Caption = 'Departments';
                RunObject = page departments;
            }
        }

    }
}
