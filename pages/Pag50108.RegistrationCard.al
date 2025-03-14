page 50108 "Registration Card"
{
    Caption = 'Registration Card';
    PageType = Card;
    SourceTable = Registration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

            }
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
