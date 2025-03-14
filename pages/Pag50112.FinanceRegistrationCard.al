page 50112 "FinanceRegistration Card"
{
    Caption = 'FinanceRegistration Card';
    PageType = Card;
    SourceTable = "Finance Registration";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(StudentId; Rec.StudentId)
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
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;
                }
                field(Semester; Rec.Semester)
                {
                    ApplicationArea = All;
                }
                field("Tution fee"; Rec."Tution fee")
                {
                    ApplicationArea = All;
                }
                field(TotalPaid; Rec.TotalPaid)
                {
                    ApplicationArea = All;
                }
                field(BalanceDue; Rec.BalanceDue)
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
            action("Save Changes")
            {
                Caption = 'Save';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.Update();
                end;
            }
        }


    }
}
