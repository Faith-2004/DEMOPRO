page 50126 "ApplicationForm List"
{
    Caption = 'ApplicationForm List';
    PageType = List;
    SourceTable = "Application form.al";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Application Number"; Rec."Application Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Number field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field("Student's passport photo"; Rec."Student's passport photo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student''s passport photo field.', Comment = '%';
                }
                field(Religion; Rec.Religion)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Religion field.', Comment = '%';
                }
                field("Copy of Certificate"; Rec."Copy of Certificate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Copy of Certificate field.', Comment = '%';
                }
                field("Parent/Guardian ContactInfo"; Rec."Parent/Guardian ContactInfo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent/Guardian Contact Information field.', Comment = '%';
                }
                field("Parent/Guardian Name"; Rec."Parent/Guardian Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent/Guardian Name field.', Comment = '%';
                }
                field("Parent/Guardian Signature"; Rec."Parent/Guardian Signature")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent/Guardian Signature field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }
                field("Previous School Address"; Rec."Previous School Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Previous School Address field.', Comment = '%';
                }
                field("Previous School Name"; Rec."Previous School Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Previous School Name field.', Comment = '%';
                }
                field("School Rules Agreement"; Rec."School Rules Agreement")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the School Rules Agreement field.', Comment = '%';
                }
                field("Sports intrested in"; Rec."Sports intrested in")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sports intrested in field.', Comment = '%';
                }
                field(Stream; Rec.Stream)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Stream field.', Comment = '%';
                }
                field("Student Signature"; Rec."Student Signature")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student Signature field.', Comment = '%';
                }
                field("Consent of Admission"; Rec."Consent of Admission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Consent of Admission field.', Comment = '%';
                }
                field("Clubs And Societies"; Rec."Clubs And Societies")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Clubs And Societies field.', Comment = '%';
                }
                field("Date of Submission"; Rec."Date of Submission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Submission field.', Comment = '%';
                }
                field(Disabled; Rec.Disabled)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Disabled field.', Comment = '%';
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                }
                field("Emergency Contact person"; Rec."Emergency Contact person")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Emergency Contact person field.', Comment = '%';
                }
                field("EmergencyContactperson contact"; Rec."EmergencyContactperson contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Emergency Contact person contacts field.', Comment = '%';
                }
                field(Form; Rec.Form)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Form field.', Comment = '%';
                }
                field("Grade/Marks Scored"; Rec."Grade/Marks Scored")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Grade/Marks Scored field.', Comment = '%';
                }
                field("Home Address"; Rec."Home Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Home Address field.', Comment = '%';
                }
                field("Medical Conditions"; Rec."Medical Conditions")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Medical Conditions field.', Comment = '%';
                }
                field(ApplicationNumber; Rec.ApplicationNumber)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Number field.', Comment = '%';
                }
                field("Date Received"; Rec."Date Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Received field.', Comment = '%';
                }
                field("Application Status"; Rec."Application Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Status field.', Comment = '%';
                }
            }
        }
    }
}
