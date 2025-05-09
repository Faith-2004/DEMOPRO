page 50173 "HillCrest RoleCenter"
{
    Caption = 'HillCrest RoleCenter';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(RC104; "Headline RC Order Processor")
            {
                ApplicationArea = All;

            }


            part(Cues; "School Cues")
            {
                ApplicationArea = Basic, suite;
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
                action(StudentFeeLedger)
                {
                    ApplicationArea = All;
                    Caption = 'Student Fee Ledger';
                    RunObject = page "Student Ledger Entry";

                }
                action(CashBookEntry)
                {
                    ApplicationArea = All;
                    Caption = 'Cash Book';
                    RunObject = page "CashBook";
                }
                action(feepayment)
                {
                    ApplicationArea = All;
                    Caption = 'Fee Payment';
                    RunObject = page "fee payment";
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
            group(LibraryManagement)
            {
                action(Books)
                {
                    ApplicationArea = all;
                    Caption = 'Library Books';
                    RunObject = page Books;

                }
                action(Staff)
                {
                    ApplicationArea = all;
                    Caption = 'Patrons';
                    RunObject = page "LibraryStaff List";
                }
                action(Students)
                {
                    ApplicationArea = all;
                    Caption = 'Students';
                    RunObject = page LIbStudentsList;
                }
                action(booktrans)
                {
                    ApplicationArea = all;
                    Caption = 'Book Lendings';
                    RunObject = page "Book Transactions";
                }
                action(fines)
                {
                    ApplicationArea = All;
                    Caption = 'Library Fines';
                    RunObject = page Fines;
                }
            }
            group(DisciplinaryRecords)
            {
                action(Disciplinary)
                {
                    ApplicationArea = All;
                    Caption = 'Disciplinary Records';
                    RunObject = page "School Disciplinary";
                }

            }
            group(Medicals)
            {
                action(StudentMedicalRecords)
                {
                    ApplicationArea = All;
                    Caption = 'Medical Records';
                    RunObject = page "studentMedical records";

                }
                action(ClinicalRecords)
                {
                    ApplicationArea = All;
                    Caption = 'Clinical Records';
                    RunObject = page "Clinical Records";
                }
            }

        }
        area(Embedding)
        {
            action(SETUP)
            {
                ApplicationArea = All;
                Caption = 'SETUP';
                RunObject = page "HillCrest Setup";

            }
            action(LibSetup)
            {
                ApplicationArea = all;
                Caption = 'Library Setup';
                RunObject = page "StudentLibrary Setup";
            }
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
        area(Processing)
        {
            action("Fee Structure")
            {
                ApplicationArea = All;
                Caption = 'Fee Structure';
                RunObject = page FeeStructure;
            }
            action("SchoolTeachers")
            {
                ApplicationArea = All;
                Caption = 'Teachers';
                RunObject = page Teachers;

            }
            action("invoices")
            {
                ApplicationArea = All;
                Caption = 'Student Invoices';
                RunObject = page "Invoice List";
            }
            action("subject teachers")
            {
                ApplicationArea = All;
                Caption = 'Subject Teachers';
                RunObject = page "Subject Teacher";
            }
        }
        area(Reporting)
        {
            action("Student Records")
            {
                ApplicationArea = all;
                Caption = 'Student Reports';
                RunObject = report "StudentRecords Report";

            }
            action("Scholarship Report")
            {
                ApplicationArea = All;
                Caption = 'Scholarship Report';
                RunObject = report "Scholarship Reports";
            }
            action(FeeStatements)
            {
                ApplicationArea = All;
                Caption = 'Fee Statement Report';
                RunObject = report "Student Ledger Report";

            }

        }
        area(Creation)
        {
            action(DisciplinaryRecord)
            {
                ApplicationArea = All;
                Caption = 'Disciplinary';
                RunObject = page "School Disciplinary";
                RunPageMode = Create;
            }
            action(Fine)
            {
                ApplicationArea = All;
                Caption = 'Fines';
                RunObject = page Fines;
                RunPageMode = Create;

            }
        }

    }
}
