page 50153 "Student MedicalRecords"
{
    Caption = 'Student Medical Records';
    PageType = Card;
    SourceTable = "Student MedicalRecords";

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
                field("Student ID"; Rec."ApplicationID")
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
}
