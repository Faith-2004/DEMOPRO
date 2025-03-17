page 50126 "ApplicationForm List"
{
    Caption = 'Application Form List';
    PageType = List;
    SourceTable = "Application form.al";

    layout
    {
        area(Content)
        {
            group("Student Details")
            {
                Caption = 'Student Details';

                field("Application Number"; Rec."Application Number") { ApplicationArea = All; }
                field(Name; Rec.Name) { ApplicationArea = All; }
                field(Age; Rec.Age) { ApplicationArea = All; }
                field(Gender; Rec.Gender) { ApplicationArea = All; }
                field(Religion; Rec.Religion) { ApplicationArea = All; }
                field("Date of Birth"; Rec."Date of Birth") { ApplicationArea = All; }
                field("Home Address"; Rec."Home Address") { ApplicationArea = All; }
                field("Phone Number"; Rec."Phone Number") { ApplicationArea = All; }
                field("Email Address"; Rec."Email Address") { ApplicationArea = All; }
                field("Student's passport photo"; Rec."Student's passport photo") { ApplicationArea = All; }
            }

            group("Parent/Guardian Details")
            {
                Caption = 'Parent/Guardian Details';

                field("Parent/Guardian Name"; Rec."Parent/Guardian Name") { ApplicationArea = All; }
                field("Parent/Guardian ContactInfo"; Rec."Parent/Guardian ContactInfo") { ApplicationArea = All; }
                field("Parent/Guardian Signature"; Rec."Parent/Guardian Signature") { ApplicationArea = All; }
            }

            group("Next of Kin")
            {
                Caption = 'Next of Kin';

                field("Emergency Contact person"; Rec."Emergency Contact person") { ApplicationArea = All; }
                field("Emergency Contact person contact"; Rec."EmergencyContactperson contact") { ApplicationArea = All; }
            }

            group("Medical Information")
            {
                Caption = 'Medical Information';

                field("Medical Conditions"; Rec."Medical Conditions")
                {
                    ApplicationArea = All;
                }
                field(Disabled; Rec.Disability)
                {
                    ApplicationArea = All;
                }
            }

            group("Academic Records")
            {
                Caption = 'Academic Records';

                field("Previous School Name"; Rec."Previous School Name")
                {
                    ApplicationArea = All;
                }
                field("Previous School Address"; Rec."Previous School Address")
                {
                    ApplicationArea = All;
                }
                field("Grade/Marks Scored"; Rec."Grade/Marks Scored")
                {
                    ApplicationArea = All;
                }
                field("Sports interested in"; Rec."Sports intrested in")
                {
                    ApplicationArea = All;
                }
                field("Clubs And Societies"; Rec."Clubs And Societies")
                {
                    ApplicationArea = All;
                }
            }

            group("Admission Details")
            {
                Caption = 'Admission Details';

                field(Form; Rec.Form)
                { ApplicationArea = All; }
                field(Stream; Rec.Stream)
                { ApplicationArea = All; }
            }

            group("Declaration")
            {
                Caption = 'Declaration';

                field("Consent of Admission"; Rec."Consent of Admission")
                { ApplicationArea = All; }
                field("School Rules Agreement"; Rec."School Rules Agreement")
                { ApplicationArea = All; }
                field("Student Signature"; Rec."Student Signature")
                { ApplicationArea = All; }
                field("Date of Submission"; Rec."Date of Submission")
                { ApplicationArea = All; }
            }

            group("Admin Use")
            {
                Caption = 'Admin Use Only';

                field(ApplicationNumber; Rec.ApplicationNumber)
                { ApplicationArea = All; }
                field("Date Received"; Rec."Date Received")
                { ApplicationArea = All; }
                field("Application Status"; Rec."Application Status")
                { ApplicationArea = All; }
            }
        }
    }
    actions
    {
        area(Processing)
        {

            action(ApproveApplication)
            {
                Caption = 'Approve Application';
                ApplicationArea = All;
                Image = Approve;
                Promoted = true;
                PromotedCategory = Process;
                Visible = Rec."Application Status" = Rec."Application Status"::Pending;

                trigger OnAction()
                begin
                    Rec."Application Status" := Rec."Application Status"::Accepted;
                    Message('Application accepted successfully.');
                end;
            }

            action(RejectApplication)
            {
                Caption = 'Reject Application';
                ApplicationArea = All;
                Image = Cancel;
                Promoted = true;
                PromotedCategory = Process;
                Visible = Rec."Application Status" = Rec."Application Status"::Pending;

                trigger OnAction()
                begin
                    Rec."Application Status" := Rec."Application Status"::Rejected;
                    Message('Application rejected.');
                end;
            }


        }
    }
}
