page 50197 "Clinical Records"
{
    Caption = 'Clinical Records';
    PageType = List;
    SourceTable = "Clinical Records";
    CardPageId = 50198;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(VisitID; Rec.VisitID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Visit ID field.', Comment = '%';
                }
                field(StudentID; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field(VisitDate; Rec.VisitDate)
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
                    ToolTip = 'Specifies the value of the Treatment field.', Comment = '%';
                }
                field(IsEmergency; Rec.IsEmergency)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Is Emergency Case? field.', Comment = '%';
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
