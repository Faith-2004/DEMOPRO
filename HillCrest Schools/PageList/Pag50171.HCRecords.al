page 50171 HCRecords
{
    Caption = 'HCRecords';
    PageType = List;
    SourceTable = HillCrestRecords;
    CardPageId = 50172;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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

                field("Nationality"; Rec."Nationality")
                {
                    ApplicationArea = All;
                }
                field("KCPE Index"; Rec."KCPE Index")
                {
                    ApplicationArea = All;
                }
                field("Previous School"; Rec."Previous School")
                {
                    ApplicationArea = All;
                }
                field("Parent Name"; Rec."Parent Name")
                {
                    ApplicationArea = All;
                }
                field("Relationship"; Rec."Relationship")
                {
                    ApplicationArea = All;
                }
                field("Phone 1"; Rec."Phone 1")
                {
                    ApplicationArea = All;
                }
                field("Phone 2"; Rec."Phone 2")
                {
                    ApplicationArea = All;
                }
                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field("Attachments"; Rec.Attachments)
                {
                    ApplicationArea = All;
                }
                field("Sponsorship Type"; Rec."Sponsorship Type")
                {
                    ApplicationArea = All;

                }

            }
        }

    }
}
