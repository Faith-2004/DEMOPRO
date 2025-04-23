page 50132 Bookscard
{
    Caption = 'Bookscard';
    PageType = Card;
    SourceTable = LibraryBooks;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(BooksId; Rec.BooksId)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BooksId field.', Comment = '%';
                }
                field(Booktitle; Rec.Booktitle)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BookName field.', Comment = '%';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author field.', Comment = '%';
                }
                field(Publisher; Rec.Publisher)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Publisher field.', Comment = '%';
                }
                field("ISBN   "; Rec."ISBN   ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ISBN field.', Comment = '%';
                }
            }
        }
    }
}
