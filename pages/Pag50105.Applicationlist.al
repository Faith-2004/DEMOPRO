page 50105 Applicationlist
{
    Caption = 'Applicationlist';
    PageType = List;
    SourceTable = ApplicationForm;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("REF Number"; Rec."REF Number")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                }
                field("Other Name"; Rec."Other Name")
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                }
                field("ID/Passport Number"; Rec."ID/Passport Number")
                {
                    ApplicationArea = All;
                }
                field(DOB; Rec.DOB)
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
            action("Open Application Card")
            {
                Caption = 'View Form';
                ApplicationArea = All;
                RunObject = page "Application Card";
            }
        }
    }
}
