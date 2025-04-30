page 50219 "library fines"
{
    Caption = 'library fines';
    PageType = Card;
    SourceTable = LibraryFines;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book ID field.', Comment = '%';
                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Date field.', Comment = '%';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.', Comment = '%';
                }
                field("Fine Amount"; Rec."Fine Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fine Amount field.', Comment = '%';
                }
            }
        }
    }
}
