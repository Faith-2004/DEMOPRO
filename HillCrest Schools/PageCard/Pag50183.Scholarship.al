page 50183 Scholarship
{
    Caption = 'Scholarship';
    PageType = Card;
    SourceTable = Scholarship;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Scholarship ID"; Rec."Scholarship ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Scholarship ID field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Sponsor Name"; Rec."Sponsor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sponsor Name field.', Comment = '%';
                }
                field("Scholarship type"; Rec."Scholarship type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Scholarship type field.', Comment = '%';
                }
                field("Coverage Percentage"; Rec."Coverage Percentage")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Coverage Percentage field.', Comment = '%';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Date field.', Comment = '%';
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Date field.', Comment = '%';
                }
                field("Approved By"; Rec."Approved By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approved By field.', Comment = '%';
                }
                field("Approval Date"; Rec."Approval Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Date field.', Comment = '%';
                }
            }
        }
    }
}
