page 50170 HCApllications
{
    Caption = 'HCApllications';
    PageType = Card;
    SourceTable = HillcrestApplications;
    layout
    {
        area(content)
        {
            group("Student Info")
            {
                field("Application ID"; Rec."Application ID")
                {
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Gender"; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field("Course Applied"; Rec."Course Applied")
                {
                    ApplicationArea = All;
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                }
                field("Nationality"; Rec."Nationality")
                {
                    ApplicationArea = All;
                }
                field("KCPE Index"; Rec."KCPE Index")
                {
                    ApplicationArea = All;
                }
                field("Previous School"; Rec."Previous School")
                {
                    ApplicationArea = All;
                }
            }

            group("Parent/Guardian Info")
            {
                field("Parent Name"; Rec."Parent Name")
                {
                    ApplicationArea = All;
                }
                field("Relationship"; Rec."Relationship")
                { ApplicationArea = All; }
            }

            group("Contact Info")
            {
                field("Phone 1"; Rec."Phone 1")
                {
                    ApplicationArea = All;
                }
                field("Phone 2"; Rec."Phone 2")
                {
                    ApplicationArea = All;
                }
                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                }
            }

            group("Other")
            {
                field("Status"; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Attachments"; Rec.Attachments)
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
            action(ApproveAndAdmit)
            {
                Caption = 'Approve and Admit';
                ApplicationArea = All;
                trigger OnAction()
                var
                    Processor: Codeunit "ApplicationsProcessor";
                begin
                    Rec.Status := Rec.Status::Approved;
                    Rec.Modify();
                    Processor.ApproveAndTransfer(Rec."Application ID");
                end;
            }
        }
    }
}
