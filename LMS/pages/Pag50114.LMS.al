page 50114 LMS
{
    Caption = 'LMS';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Team Member")
            {
                ApplicationArea = All;
            }
            part(LibraryCues; "Library Cues")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group("Books")
            {
                action(bookslist)
                {
                    ApplicationArea = All;
                    Caption = 'Book Details';
                    RunObject = page "BookList";



                }
                action(Authors)
                {

                    ApplicationArea = All;
                    Caption = 'Author Details';
                    RunObject = page "Authors List";

                }

            }
            group("Borrower")
            {
                action(BorrowerList)
                {
                    ApplicationArea = All;
                    Caption = 'Borrower Details';
                    RunObject = page "BorrowerList";


                }

            }
            group("BookLending")
            {
                action(BookLendingList)
                {
                    ApplicationArea = All;
                    Caption = 'Book Lending';
                    RunObject = page "BookLending List";
                }
            }

        }
        area(Embedding)
        {
            action(Setup)
            {
                ApplicationArea = Basic, Suite;
                RunObjecT = page "Library Setup";

            }



        }
        area(Reporting)
        {
            group(Reports)
            {
                action("sbooks")
                {
                    ApplicationArea = Basic, Suite;

                    RunObject = report "Book report";
                }
            }

            action("BookLendings")
            {
                ApplicationArea = Basic, Suite;
                RunObject = report "Book lendings report";
            }



        }
        area(Processing)
        {
            action("Patrons")
            {
                ApplicationArea = all;
                RunObject = page "PatronList";


            }


            action(CalculateFine)
            {
                Caption = 'Calculate Fines';
                ApplicationArea = All;

            }
        }
        area(Creation)
        {
            action("Book")
            {
                ApplicationArea = All;
                RunObject = page "Book Card";
                RunPageMode = Create;
            }
            action("Staff")
            {
                ApplicationArea = All;
                RunObject = page "PatronsCard";
                RunPageMode = Create;

            }
        }
    }


}
