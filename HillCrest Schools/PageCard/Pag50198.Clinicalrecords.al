page 50198 Clinicalrecords
{
    Caption = 'Clinicalrecords';
    PageType = Card;
    SourceTable = "Clinical Records";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(NewVisit)
            {
                ApplicationArea = All;
                Caption = 'New Visit';
                Image = New;
                trigger OnAction()
                var
                    NewVisitRec: Record "Clinical Records";
                begin
                    PAGE.RunModal(PAGE::"ClinicalRecords", NewVisitRec);
                end;
            }

            action(EscalateToParent)
            {
                ApplicationArea = All;
                Caption = 'Notify Parent';
                Image = SendMail;
                trigger OnAction()
                var
                    ClinicVisitRec: Record "Clinical Records";
                begin
                    ClinicVisitRec.Get(Rec."VisitID");

                    if ClinicVisitRec."IsEmergency" then begin
                        Message('Parent has been notified about the emergency case.');

                    end else
                        Message('This is not an emergency case.');
                end;
            }
        }
    }

}
