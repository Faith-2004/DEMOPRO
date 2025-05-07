page 50246 CustomerSetup
{
    Caption = 'CustomerSetup';
    PageType = Card;
    SourceTable = CustomerSetup;

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
                field(CustomerID; Rec.CustomerID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CustomerID field.', Comment = '%';
                }
            }
        }
    }
}
