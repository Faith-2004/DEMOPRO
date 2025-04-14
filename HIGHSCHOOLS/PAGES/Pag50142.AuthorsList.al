page 50142 AuthorsList
{
    Caption = 'AuthorsList';
    PageType = List;
    SourceTable = BookAuthors;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
