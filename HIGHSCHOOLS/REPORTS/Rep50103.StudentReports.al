report 50103 "Student Reports"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layout/AdmittedStudents.rdl';
    Caption = 'Student Reports';
    dataset
    {
        dataitem(AdmittedStudents; AdmittedStudents)
        {
            column(StudentID; "Student ID")
            {
            }
            column(ApplicationID; ApplicationID)
            {
            }
            column(FullName; "Full Name")
            {
            }
            column(DOB; DOB)
            {
            }
            column(Gender; Gender)
            {
            }
            column(Nationality; Nationality)
            {
            }
            column(KCPEIndex; "KCPE Index")
            {
            }
            column(PreviousSchool; "Previous School")
            {
            }
            column(ParentName; ParentName)
            {
            }
            column(Relationship; Relationship)
            {
            }
            column(Phone1; Phone1)
            {
            }
            column(Phone2; Phone2)
            {
            }
            column(Email; Email)
            {
            }
            column(Attachments; "Attachments ")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
