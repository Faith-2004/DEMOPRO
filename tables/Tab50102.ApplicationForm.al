table 50102 ApplicationForm
{
    Caption = 'ApplicationForm';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "REF Number"; Code[20])
        {
            Caption = 'REF Number';
        }

        field(2; "First Name"; Text[40])
        {
            Caption = 'First Name';
        }
        field(3; Surname; Text[40])
        {
            Caption = 'Surname';
        }
        field(4; "Other Name"; Text[40])
        {
            Caption = 'Other Name';
        }
        field(5; "Phone Number"; Integer)
        {
            Caption = 'Phone Number';
        }
        field(6; "Email Address"; Code[50])
        {
            Caption = 'Email Address';
        }
        field(7; "ID/Passport Number"; Integer)
        {
            Caption = 'ID/Passport Number';
        }
        field(8; DOB; Code[30])
        {
            Caption = 'DOB';
        }

    }
    keys
    {
        key(PK; "REF Number")
        {
            Clustered = true;
        }
    }
}
