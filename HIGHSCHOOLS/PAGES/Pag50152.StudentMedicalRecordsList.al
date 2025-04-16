page 50152 "Student Medical Records"
{
    Caption = 'Student Medical Records';
    PageType = List;
    SourceTable = "Student MedicalRecords";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
                field("Medical Condition"; Rec."Medical Condition")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Medical Condition field.', Comment = '%';
                }
                field(Allergy; Rec.Allergy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Allergy field.', Comment = '%';
                }
                field("Immunization History"; Rec."Immunization History")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Immunization History field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(EscalateToParents)
            {
                Caption = 'Escalate to Parents';
                ApplicationArea = All;
                Image = Alerts;

                trigger OnAction()
                begin
                    Message('Escalation notice sent to parent for Student ID: %1', Rec."Student ID");
                end;
            }
        }
    }
}
