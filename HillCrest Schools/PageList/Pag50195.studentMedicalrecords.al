page 50195 "studentMedical records"
{
    Caption = 'studentMedical records';
    PageType = List;
    SourceTable = StudentMedicalRecords;
    CardPageId = 50196;

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
                field(FullName; Rec.FullName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FullName field.', Comment = '%';
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
                field("No.Series"; Rec." No.Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NoSeries  field.', Comment = '%';

                }
            }
        }
    }
}
