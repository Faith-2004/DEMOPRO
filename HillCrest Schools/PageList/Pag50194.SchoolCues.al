page 50194 "School Cues"
{
    Caption = 'School Cues';
    PageType = CardPart;
    SourceTable = SchoolCues;

    layout
    {
        area(Content)
        {
            cuegroup(SchoolStatistics)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                    Visible = false;

                }
                field("Number Of Students"; Rec."Number Of Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number Of Students field.', Comment = '%';
                    DrillDownPageId = "HCRecords";
                }
                field("Number of Teachers"; Rec."Number of Teachers")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number of Teachers field.', Comment = '%';
                    DrillDownPageId = Teachers;
                }
                field(Classes; Rec.Classes)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Classes field.', Comment = '%';
                    DrillDownPageId = ClassList;
                }
                field("Subjects Offered"; Rec."Subjects Offered")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subjects Offered field.', Comment = '%';
                    DrillDownPageId = subjects;
                }
                field("Scholarship Students"; Rec."Scholarship Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Scholarship Students field.', Comment = '%';
                    DrillDownPageId = "Scholarship List";

                }
                field(Departments; Rec.Departments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Departments field.', Comment = '%';
                    DrillDownPageId = "departments";
                }
                field("Number of Disciplinary Cases;"; Rec."Number of Disciplinary Cases;")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Disciplinary Cases field.', Comment = '%';
                    DrillDownPageId = "School Disciplinary";
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
