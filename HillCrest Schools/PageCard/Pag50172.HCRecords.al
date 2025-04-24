page 50172 HCRecordsCard
{
    Caption = 'HCRecords';
    PageType = Card;
    SourceTable = HillCrestRecords;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("Enrolled Course"; Rec."Enrolled Course")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Enrolled Course field.', Comment = '%';
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Enrollment Date field.', Comment = '%';
                }
            }
        }
    }
}
