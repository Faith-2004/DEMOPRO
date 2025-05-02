report 50107 "StudentRecords Report"
{
    Caption = 'StudentRecords Report';
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layout/HCRecords.rdl';
    dataset
    {
        dataitem(HillCrestRecords; HillCrestRecords)
        {
            column(StudentID; "Student ID")
            {
            }
            column(FullName; "Full Name")
            {
            }
            column(DateofBirth; "Date of Birth")
            {
            }
            column(Gender; Gender)
            {
            }
            column(EnrolledCourse; "Enrolled Course")
            {
            }
            column(EnrollmentDate; "Enrollment Date")
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
            column(ParentName; "Parent Name")
            {
            }
            column(Relationship; Relationship)
            {
            }
            column(Phone1; "Phone 1")
            {
            }
            column(Phone2; "Phone 2")
            {
            }
            column(Email; Email)
            {
            }
            column(Attachments; Attachments)
            {
            }
            column(SponsorshipType; "Sponsorship Type")
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
