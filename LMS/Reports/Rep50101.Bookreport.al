report 50101 "Book report"
{
    Caption = 'Book report';
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layouts/Book.rdl';
    dataset
    {
        dataitem(Book; Book)
        {
            RequestFilterFields = Status, Category;
            column(Name; Name)
            {
            }
            column(Category; Category)
            {
            }
            column(Publisher; Publisher)
            {
            }
            column(Status; Status)
            {
            }
            column(borrowed; borrowed)
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
