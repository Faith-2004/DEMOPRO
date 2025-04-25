page 50178 "Fee Structure"
{
    Caption = 'Fee Structure';
    PageType = List;
    SourceTable = "Fee Structure";
    CardPageId = 50179;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Fee Structure ID"; Rec."Fee Structure ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fee Structure ID field.', Comment = '%';
                }
                field("Academic Year"; Rec."Academic Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Academic Year field.', Comment = '%';
                }
                field(Term; Rec.Term)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Term field.', Comment = '%';
                }
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class field.', Comment = '%';
                }
                field("Total Fee Amount"; Rec."Total Fee Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Fee Amount field.', Comment = '%';
                }
                field("Created Date"; Rec."Created Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created Date field.', Comment = '%';
                }
            }
        }
    }
}
