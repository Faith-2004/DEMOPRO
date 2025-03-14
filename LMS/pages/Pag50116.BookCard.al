page 50116 "Book Card"
{
    Caption = 'Book Card';
    PageType = Card;
    SourceTable = "Book";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book ID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
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
                field("ISBN Number"; Rec."ISBN Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ISBN Number field.', Comment = '%';
                }
                field(Category; Rec.Category)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
}
