page 50151 SchoolCues
{
    Caption = 'SchoolCues';
    PageType = CardPart;
    SourceTable = "School cues";

    layout
    {
        area(Content)
        {
            cuegroup("School Statistics")
            {



                field("Entry Number"; Rec."Entry Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry Number field.', Comment = '%';
                    Visible = false;
                }

                field(BooksIssued; Rec.BooksIssued)
                {
                    DrillDownPageId = LendingList;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Borrowed Books field.', Comment = '%';
                }
                field("Books Available"; Rec."Books Available")
                {
                    DrillDownPageId = LendingList;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Available Books field.', Comment = '%';
                }
                field("Books Pending Request"; Rec."Books Pending Request")
                {
                    DrillDownPageId = LendingList;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Books Pending Approval field.', Comment = '%';
                }
                field("Students Approved"; Rec."Students Approved")
                {
                    DrillDownPageId = ApplicationLists;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Students Admitted field.', Comment = '%';
                }

            }
        }

    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
