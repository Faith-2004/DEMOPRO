page 50168 StudentExt
{
    Caption = 'StudentExt';
    PageType = ListPart;
    SourceTable = "House Assignment";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(StudentID; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StudentID field.', Comment = '%';
                }
                field(StudentName; Rec.StudentName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StudentName field.', Comment = '%';
                }
                field(RoomNo; Rec.RoomNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RoomNo field.', Comment = '%';
                }
                field(HouseName; Rec.HouseName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HouseName field.', Comment = '%';
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
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        RoomRec: Record "House Rooms";
        DormRec: Record "Houses";
    begin

        clear(DormitoryName);
        if RoomRec.Get(RoomRec."Room No.") then
            if DormRec.Get(RoomRec."HouseCode") then
                DormitoryName := DormRec."House Name";
    end;

    var
        DormitoryName: Text[100];
}
