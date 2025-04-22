report 50106 "Disciplinary Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layout.Disciplinary.rdl';
    ApplicationArea = All;
    Caption = 'Disciplinary Report';
    UsageCategory = Administration;
    dataset
    {
        dataitem(DisplinaryIssues; "Displinary Issues")
        {
            column(RecordID; "RecordID")
            {
            }
            column(StudentID; StudentID)
            {
            }
            column(StudentName; StudentName)
            {
            }
            column(InfractionType; InfractionType)
            {
            }
            column(ActionTaken; ActionTaken)
            {
            }
            column(Comments; Comments)
            {
            }
            column(Date; "Date")
            {
            }
            column(Logo; CompanyInformation.Picture)
            {

            }
            column(Name; CompanyInformation.Name)
            {


            }
            column(Address; CompanyInformation.Address)
            {

            }
            column(seq; seq)
            {

            }
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                seq := seq + 1;
            end;
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
    trigger OnInitReport()
    begin

        CompanyInformation.GET();

        CompanyInformation.CalcFields(Picture)

    end;

    var
        CompanyInformation: Record "Company Information";
        seq: Integer;
}