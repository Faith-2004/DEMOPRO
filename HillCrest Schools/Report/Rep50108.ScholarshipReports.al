report 50108 "Scholarship Reports"
{
    ApplicationArea = All;
    Caption = 'Scholarship Reports';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './ Report Layout/ScholarshipList.rdl';


    dataset
    {
        dataitem(Scholarship; Scholarship)
        {
            column(ScholarshipID; "Scholarship ID")
            {
            }
            column(StudentID; "Student ID")
            {
            }
            column(SponsorName; "Sponsor Name")
            {
            }
            column(Scholarshiptype; "Scholarship type")
            {
            }
            column(CoveragePercentage; "Coverage Percentage")
            {
            }
            column(StartDate; "Start Date")
            {
            }
            column(EndDate; "End Date")
            {
            }
            column(ApprovedBy; "Approved By")
            {
            }
            column(ApprovalDate; "Approval Date")
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
