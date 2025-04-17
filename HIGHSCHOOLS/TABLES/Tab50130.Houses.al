table 50130 Houses
{
    Caption = 'Houses';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; HouseCode; Integer)
        {
            Caption = 'HouseCode';
        }
        field(2; "House Name"; Text[100])
        {
            Caption = 'House Name';
        }
        field(3; Gender; Option)
        {
            OptionMembers = Male,Female;
            OptionCaption = 'Male,Female';
        }
        field(4; "Total Rooms"; Integer)
        {
            Caption = 'Total Rooms';
        }
        field(5; "House Masters/Mistresses"; Text[100])
        {
            Caption = 'House Masters/Mistresses';
        }

    }
    keys
    {
        key(PK; HouseCode)
        {
            Clustered = true;
        }
    }
}
