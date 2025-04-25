page 50193 DisciplinaryCard
{
    Caption = 'DisciplinaryCard';
    PageType = Card;
    SourceTable = "Disciplinary Records";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Record ID"; Rec."Record ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Record ID field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student Name field.', Comment = '%';
                }
                field("Teacher ID"; Rec."Teacher ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher ID field.', Comment = '%';
                }
                field("Infraction Type"; Rec."Infraction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Infraction Type field.', Comment = '%';
                }
                field("Action Taken"; Rec."Action Taken")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Action Taken field.', Comment = '%';
                }
                field(Comments; Rec.Comments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Comments field.', Comment = '%';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.', Comment = '%';
                }
                field("Reviewed by Principal"; Rec."Reviewed by Principal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reviewed by Principal field.', Comment = '%';
                }
                field(Escalated; Rec.Escalated)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Escalated field.', Comment = '%';
                }
            }
        }
    }
}
