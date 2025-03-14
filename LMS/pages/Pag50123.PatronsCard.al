page 50123 PatronsCard
{
    Caption = 'PatronsCard';
    PageType = Card;
    SourceTable = Patrons;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Patron Id"; Rec."Patron Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Id field.', Comment = '%';
                }
                field("Patron Name"; Rec."Patron Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Name field.', Comment = '%';
                }
            }
        }
    }
}
