report 50102 "Book lendings report"
{
    Caption = 'Book lendings report';
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layout/Book Lendings.rdl';
    dataset
    {
        dataitem(BookLending; "Book Lending")
        {
            RequestFilterFields = "Boook ID", "Borrower ID", Status;
            column(LendingID; "Lending ID")
            {
            }
            column(BoookID; "Boook ID")
            {
            }
            column(BookName; "Book Name")
            {
            }
            column(BorrowerID; "Borrower ID")
            {
            }
            column(BorrowerName; "Borrower Name")
            {
            }
            column(BorrowingDate; "Borrowing Date")
            {
            }
            column(DueDate; "Due Date")
            {
            }
            column(ReturnDate; "Return Date")
            {
            }
            column(Status; Status)
            {
            }
            column(Fine; Fine)
            {
            }
            column(Logo; CompanyInformation.Picture)
            { }
            column(NAME; CompanyInformation.NAME)
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
