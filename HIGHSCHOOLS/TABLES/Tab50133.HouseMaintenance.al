table 50133 "House Maintenance"
{
    Caption = 'House Maintenance';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Request ID"; Integer)
        {
            Caption = 'Request ID';
        }
        field(2; "RoomNo."; Integer)
        {
            Caption = 'RoomNo.';
        }
        field(3; HouseName; Text[100])
        {
            Caption = 'HouseName';
        }
        field(4; "Issue Description"; Text[100])
        {
            Caption = 'Issue Description';
        }
        field(5; "Date Resolved"; Date)
        {
            Caption = 'Date Resolved';
        }
    }
    keys
    {
        key(PK; "Request ID")
        {
            Clustered = true;
        }
    }
}
