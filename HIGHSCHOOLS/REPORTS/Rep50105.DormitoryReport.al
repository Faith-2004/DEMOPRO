report 50105 "Dormitory Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layout/HouseAssignment.rdl';
    ApplicationArea = All;
    Caption = 'Dormitory Report';
    UsageCategory = Administration;
    dataset
    {
        dataitem(HouseAssignment; "House Assignment")
        {
            column(StudentID; StudentID)
            {
            }
            column(StudentName; StudentName)
            {
            }
            column(RoomNo; RoomNo)
            {
            }
            column(HouseName; HouseName)
            {
            }
            column(StartDate; "Start Date")
            {
            }
            column(EndDate; "End Date")
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
