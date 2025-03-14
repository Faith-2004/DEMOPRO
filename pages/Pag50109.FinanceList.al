page 50109 "Student Finance List"
{
    PageType = List;
    SourceTable = "Student Finance";
    Caption = 'Student Finance List';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                }
                field("Sponsorship Type"; Rec."Sponsorship Type")
                {
                    ApplicationArea = All;
                }
                field("Tuition Fees"; Rec."Tuition Fees")
                {
                    ApplicationArea = All;
                }
                field("Scholarship Amount"; Rec."Scholarship Amount")
                {
                    ApplicationArea = All;
                }
                field("Total Paid"; Rec."Total Paid")
                {
                    ApplicationArea = All;
                }
                field("Balance Due"; Rec."Balance Due")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("View Details")
            {
                Caption = 'View Details';
                ApplicationArea = All;
                RunObject = Page "Student Finance Card";
                RunPageLink = "Student ID" = FIELD("Student ID");
            }
        }
    }
}
