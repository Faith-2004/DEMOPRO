page 50169 HCApplication
{
    Caption = 'HCApplication';
    PageType = List;
    SourceTable = HillcrestApplications;
    CardPageId = 50170;


    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Application ID"; Rec."Application ID")
                {
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }
                field("Course Applied"; Rec."Course Applied")
                {
                    ApplicationArea = All;
                }
                field("Status"; Rec.Status)
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
                field("Parent Name"; Rec."Parent Name")
                {
                    ApplicationArea = All;
                }
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
                field("Attachments"; Rec.Attachments)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
