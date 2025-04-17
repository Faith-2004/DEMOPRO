table 50131 "House Rooms"
{
    Caption = 'House Rooms';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Room No."; Integer)
        {
            Caption = 'Room No.';
        }
        field(2; "HouseCode"; Integer)
        {
            Caption = 'House Code';
        }
        field(3; Capacity; Integer)
        {
            Caption = 'Capacity';
        }
        field(4; OccupiedCount; Integer)
        {
            Caption = 'OccupiedCount';
        }
    }
    keys
    {
        key(PK; "Room No.")
        {
            Clustered = true;
        }
    }
}
