page 50220 "Headline Buffer"
{
    Caption = 'Headline Buffer';
    PageType = CardPart;
    SourceTable = "Headline Buffer";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(Headline; Rec.Headline)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Headline field.', Comment = '%';
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        Buffer: Record "Headline Buffer" temporary;
        StudentRec: Record HillCrestRecords;
        VisitRec: Record "Clinical Records";
    begin

        Buffer.Init();
        Buffer.Headline := 'There are ' + Format(StudentRec.Count) + ' students currently enrolled.';
        Buffer.Insert();


        VisitRec.SetRange(VisitDate, Today());
        Buffer.Init();
        Buffer.Headline := Format(VisitRec.Count) + ' students have clinic visits today.';
        Buffer.Insert();
    end;

}
