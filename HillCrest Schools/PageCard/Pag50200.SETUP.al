page 50200 SETUP
{
    Caption = 'SETUP';
    PageType = Card;
    SourceTable = "HillCrest Setup";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
