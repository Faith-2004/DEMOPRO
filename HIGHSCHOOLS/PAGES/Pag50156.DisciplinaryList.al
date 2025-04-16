page 50156 "Disciplinary List"
{
    ApplicationArea = All;
    Caption = 'Disciplinary List';
    PageType = List;
    SourceTable = "Displinary Issues";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("RecordID"; Rec."RecordID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Record ID field.', Comment = '%';
                }
                field(StudentID; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field(InfractionType; Rec.InfractionType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Misconduct Done field.', Comment = '%';
                }
                field(ActionTaken; Rec.ActionTaken)
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
            }
        }
    }
}
