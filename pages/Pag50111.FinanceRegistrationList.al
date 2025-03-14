page 50111 "Finance Registration List"
{
    Caption = 'Finance Registration List';
    PageType = List;
    SourceTable = "Finance Registration";

    layout
    {
        area(Content)
        {
            repeater(General)
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
            action("Check Registration")
            {
                Caption = 'Check Status';
                ApplicationArea = All;
                RunObject = page "FinanceRegistration Card";
            }
        }

    }
}
