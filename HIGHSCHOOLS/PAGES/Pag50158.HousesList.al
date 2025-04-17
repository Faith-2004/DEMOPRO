page 50158 "Houses List"
{
    Caption = 'Houses List';
    PageType = List;
    SourceTable = Houses;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(HouseCode; Rec.HouseCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HouseCode field.', Comment = '%';
                }
                field("House Name"; Rec."House Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the House Name field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("Total Rooms"; Rec."Total Rooms")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Rooms field.', Comment = '%';
                }
                field("House Masters/Mistresses"; Rec."House Masters/Mistresses")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the House Masters/Mistresses field.', Comment = '%';
                }
            }
        }
    }
}
