report 50100 Students
{
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Studentlist.rdlc';
    ApplicationArea = Basic, Suite;
    Caption = 'Student List';
    UsageCategory = ReportsAndAnalysis;
    DataAccessIntent = ReadOnly;
    dataset
    {
        dataitem(StudentRecords; StudentRecords)
        {
            column(StudentId; StudentId)
            {
            }
            column(StudentName; "Student Name")
            {
            }
            column(School; School)
            {
            }
            column(Department; Department)
            {
            }
            column(Course; Course)
            {
            }
            column(Year; Year)
            {
            }
            column(Semester; Semester)
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
