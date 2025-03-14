page 50113 StudentStats
{
    Caption = 'StudentStats';
    PageType = CardPart;
    SourceTable = "Student Cues";

    layout
    {
        area(Content)
        {
            cuegroup(Studentstatistics)
            {
                Caption = 'General';

                field("Number of Students"; Rec."Number of Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number of Students field.', Comment = '%';
                    DrillDownPageId = "Applicationlist";
                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registered field.', Comment = '%';
                    DrillDownPageId = "Finance Registration List";
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
            Rec.Insert()
        end;
    end;
}
