page 50143 AuthorsCard
{
    Caption = 'AuthorsCard';
    PageType = Card;
    SourceTable = BookAuthors;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(AuthorID; Rec.AuthorID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the AuthorID field.', Comment = '%';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author field.', Comment = '%';
                }
            }
        }
    }
}
