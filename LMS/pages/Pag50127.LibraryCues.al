page 50127 "Library Cues"
{
    Caption = 'Library Cues';
    PageType = CardPart;
    SourceTable = "Library Cues";

    layout
    {
        area(Content)
        {
            cuegroup("Book Statistics")
            {
                Caption = 'General';
                field("Available Books"; Rec."Available Books")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Available Books field.', Comment = '%';
                    DrillDownPageId = BookList;
                }
                field("Total Borrowed Books"; Rec."Total Borrowed Books")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Borrowed Books field.', Comment = '%';
                    DrillDownPageId = "BookLending List";
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
