page 50199 "HillCrest Setup"
{
    Caption = 'HillCrest Setup';
    PageType = List;
    SourceTable = "HillCrest Setup";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Primary Key field.', Comment = '%';
                }
                field("Medical Record Nos."; Rec."Medical Record Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Medical Record Nos. field.', Comment = '%';
                }
            }
        }
    }
}
