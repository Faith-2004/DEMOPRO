page 50102 ConsumerCard
{
    Caption = 'ConsumerCard';
    PageType = Card;
    SourceTable = Consumer;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(ConsumerId; Rec.ConsumerId)
                {
                    ApplicationArea = All;
                }
                field("Consumer Name"; Rec."Consumer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'The name of the student.';

                    Caption = 'General';
                }
                field(PhoneNumber; Rec."Phone Number")
                {
                    ApplicationArea = Basic, Suite;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Email of consumer';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    actions
    {
        area(processing)
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
