page 50122 PatronList
{
    Caption = 'PatronList';
    PageType = List;
    SourceTable = Patrons;
    CardPageId = PatronsCard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
