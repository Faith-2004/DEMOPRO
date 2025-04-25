page 50192 "School Disciplinary"
{
    ApplicationArea = All;
    Caption = 'School Disciplinary';
    PageType = List;
    SourceTable = "Disciplinary Records";
    UsageCategory = Administration;
    CardPageId = 50193;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Record ID"; Rec."Record ID")
                {
                    ApplicationArea = All;
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Student Name"; rec."Student Name")
                {
                    ApplicationArea = All;
                }
                field("Teacher ID"; Rec."Teacher ID")
                {
                    ApplicationArea = All;
                }
                field("Infraction Type"; Rec."Infraction Type")
                {
                    ApplicationArea = All;
                }
                field("Action Taken"; Rec."Action Taken")
                {
                    ApplicationArea = All;
                }
                field("Reviewed by Principal"; Rec."Reviewed by Principal")
                {
                    ApplicationArea = All;
                }
                field("Escalated"; Rec."Escalated")
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
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
            action("Open Card")
            {
                ApplicationArea = All;
                RunObject = Page "DisciplinaryCard";
                RunPageMode = Edit;
                Image = EditLines;
            }
        }
    }
}
