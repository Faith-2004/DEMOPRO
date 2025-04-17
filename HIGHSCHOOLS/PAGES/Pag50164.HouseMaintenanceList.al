page 50164 "House Maintenance List"
{
    Caption = 'House Maintenance List';
    PageType = List;
    SourceTable = "House Maintenance";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Request ID"; Rec."Request ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Request ID field.', Comment = '%';
                }
                field("RoomNo."; Rec."RoomNo.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RoomNo. field.', Comment = '%';
                }
                field(HouseName; Rec.HouseName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HouseName field.', Comment = '%';
                }
                field("Issue Description"; Rec."Issue Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issue Description field.', Comment = '%';
                }
                field("Date Resolved"; Rec."Date Resolved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Resolved field.', Comment = '%';
                }
            }
        }
    }
}
