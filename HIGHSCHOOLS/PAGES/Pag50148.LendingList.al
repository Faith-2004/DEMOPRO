page 50148 LendingList
{
    Caption = 'LendingList';
    PageType = List;
    SourceTable = Booklendings;
    CardPageId = 50149;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(LendingID; Rec.LendingID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LendingID field.', Comment = '%';
                }
                field(BorrowerID; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BorrowerID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(BookId; Rec.BookId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BookId field.', Comment = '%';
                }
                field(Booktitle; Rec.Booktitle)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Booktitle field.', Comment = '%';
                }
                field(DueDate; Rec.DueDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DueDate field.', Comment = '%';
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
