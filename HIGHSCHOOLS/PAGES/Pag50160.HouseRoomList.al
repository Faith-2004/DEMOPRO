page 50160 "HouseRoom List"
{
    Caption = 'HouseRoom List';
    PageType = List;
    SourceTable = "House Rooms";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Room No."; Rec."Room No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Room No. field.', Comment = '%';
                }
                field(HouseCode; Rec.HouseCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the House Code field.', Comment = '%';
                }
                field(Capacity; Rec.Capacity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Capacity field.', Comment = '%';
                }
                field(OccupiedCount; Rec.OccupiedCount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OccupiedCount field.', Comment = '%';
                }
            }
        }
    }
}
