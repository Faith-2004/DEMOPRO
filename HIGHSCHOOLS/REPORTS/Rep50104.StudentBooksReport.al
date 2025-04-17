report 50104 "StudentBooks Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/Booklendings.rdl';
    Caption = 'StudentBooks Report';
    dataset
    {
        dataitem(Booklendings; Booklendings)
        {
            column(LendingID; LendingID)
            {
            }
            column(StudentID; StudentID)
            {
            }
            column(Name; Name)
            {
            }
            column(BookId; BookId)
            {
            }
            column(Booktitle; Booktitle)
            {
            }
            column(DueDate; DueDate)
            {
            }
            column(Status; Status)
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
