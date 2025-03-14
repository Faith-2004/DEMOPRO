page 50110 "Student Finance Card"
{
    PageType = Card;
    SourceTable = "Student Finance";
    Caption = 'Student Finance Card';


    layout
    {
        area(content)
        {
            group("General Information")
            {
                field(StudentID; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                }
                field("Sponsorship Type"; Rec."Sponsorship Type")
                {
                    ApplicationArea = All;
                }
            }

            group("Financial Details")
            {
                field("Tuition Fees"; Rec."Tuition Fees")
                {
                    ApplicationArea = All;
                }
                field("Scholarship Amount"; rec."Scholarship Amount")
                {
                    ApplicationArea = All;
                }
                field("Total Paid"; Rec."Total Paid")
                {
                    ApplicationArea = All;
                }
                field("Balance Due"; Rec."Balance Due")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Due Date"; Rec."Due Date")
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
