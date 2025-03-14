report 50102 "Book lendings report"
{
    Caption = 'Book lendings report';
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layout/Book Lendings.rdl';
    dataset
    {
        dataitem(BookLending; "Book Lending")
        {
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
