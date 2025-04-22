page 50157 "Disciplinary Card"
{
    Caption = 'Disciplinary Card';
    PageType = Card;
    SourceTable = "Displinary Issues";

    layout
    {
        area(Content)
        {
            group("Infraction Info")
            {
                field("RecordID"; Rec."RecordID")
                {
                    ApplicationArea = All;
                }
                field("StudentID"; Rec."StudentID")
                {
                    ApplicationArea = All;
                }
                field("StudentName"; Rec.StudentName)
                {
                    ApplicationArea = all;
                }
                field("InfractionType"; Rec."InfractionType")

                {
                    ApplicationArea = All;
                }
                field("ActionTaken"; Rec."ActionTaken")
                {
                    ApplicationArea = All;
                }
            }
            group("More Details")
            {
                field("Comments"; Rec."Comments")
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
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
            action(ReviewAction)
            {
                Caption = 'Review by Principal';
                ApplicationArea = All;
                Image = Action;
                trigger OnAction()
                begin
                    Message('Disciplinary action must be reviewed by the principal.');
                end;
            }
        }
    }
}