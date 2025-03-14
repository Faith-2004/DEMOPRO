page 50107 Registrationlist
{
    ApplicationArea = All;
    Caption = 'Registrationlist';
    PageType = List;
    SourceTable = Registration;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Registration  Number"; Rec."Registration  Number")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                }
                field(PhoneNumber; Rec.PhoneNumber)
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field(ApplicationStatus; Rec.ApplicationStatus)
                {
                    ApplicationArea = All;
                }

            }


        }
    }
    actions
    {
        area(Processing)
        {
            action("Open Registration Card")
            {
                Caption = 'Registration Form';
                ApplicationArea = All;
                RunObject = page "Registration Card";


            }
        }
    }
}
