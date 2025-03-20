page 50131 "Academics Cues"
{
    Caption = 'Academics Cues';
    PageType = CardPart;
    SourceTable = "Academics Cues";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Entry Number"; Rec."Entry Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry Number field.', Comment = '%';

                }
                field("Pending Students"; Rec."Pending Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pending Students field.', Comment = '%';
                    DrillDownPageId = "ApplicationForm List";
                }
                field("Accepted Students"; Rec."Accepted Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Accepted Students field.', Comment = '%';
                    DrillDownPageId = "ApplicationForm List";
                }
                field("Rejected students"; Rec."Rejected students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejected students field.', Comment = '%';
                    DrillDownPageId = "ApplicationForm List";
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
