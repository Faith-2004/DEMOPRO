page 50155 ClinicVisits
{
    Caption = 'ClinicVisits';
    PageType = Card;
    SourceTable = "Clinic Visits";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Visit ID"; Rec."Visit ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Visit ID field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Visit Date"; Rec."Visit Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Visit Date field.', Comment = '%';
                }
                field(Diagnosis; Rec.Diagnosis)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Diagnosis field.', Comment = '%';
                }
                field(Treatment; Rec.Treatment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Diagnosis field.', Comment = '%';
                }
            }
        }
    }
}
