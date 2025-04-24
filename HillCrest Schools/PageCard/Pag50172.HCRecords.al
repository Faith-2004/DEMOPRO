page 50172 HCRecordsCard
{
    Caption = 'HCRecords';
    PageType = Card;
    SourceTable = HillCrestRecords;

    layout
    {
        area(content)
        {
            group("Student Info")
            {
                field("Registration Number"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Gender"; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field("Enrolled Course"; Rec."Enrolled Course")
                {
                    ApplicationArea = All;
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    ApplicationArea = All;
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
            }

            group("Parent/Guardian Info")
            {
                field("Parent Name"; Rec."Parent Name")
                {
                    ApplicationArea = All;
                }
                field("Relationship"; Rec."Relationship")
                {
                    ApplicationArea = All;
                }
            }

            group("Contact Info")
            {
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
            }

            group("Other")
            {
                field("Attachments"; Rec.Attachments)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
