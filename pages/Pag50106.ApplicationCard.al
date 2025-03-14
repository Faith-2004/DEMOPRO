page 50106 "Application Card"
{
    Caption = 'Application Card';
    PageType = Card;
    SourceTable = ApplicationForm;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

            }
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
    actions
    {
        area(Processing)
        {
            action(Save)
            {
                Caption = 'Save';
                ApplicationArea = All;
                Image = Save;
                trigger OnAction()
                begin
                    Rec.Modify()
                end;
            }
            action(Back)
            {
                Caption = 'Back';
                ApplicationArea = All;
                Image = Close;
                trigger OnAction()
                begin
                    CurrPage.Close();
                end;

            }
        }
    }


}
