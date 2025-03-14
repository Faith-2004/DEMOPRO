table 50100 Consumer
{
    Caption = 'Consumer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ConsumerId; Code[50])
        {
            Caption = 'ConsumerId';
        }
        field(2; "Consumer Name"; Text[50])
        {
            Caption = 'Consumer Name';
        }
        field(3; "Phone Number"; Integer)
        {
            Caption = 'Phone Number';
        }
        field(4; Email; Code[50])
        {
            Caption = 'Email';
        }
        field(5; Gender; Option)
        {
            Caption = 'Gender';
            OptionMembers = "Male","Female";
        }
        field(6; Location; Text[50])
        {
            Caption = 'Location';
        }
        field(7; State; Text[20])
        {
            Caption = 'Status';
        }
    }
    keys
    {
        key(PK; ConsumerId)
        {
            Clustered = true;
        }
    }
}
