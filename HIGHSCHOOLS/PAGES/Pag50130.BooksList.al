page 50130 BooksList
{
    ApplicationArea = All;
    Caption = 'BooksList';
    PageType = List;
    SourceTable = LibraryBooks;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
