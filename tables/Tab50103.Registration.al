table 50103 Registration
{
    Caption = 'Registration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration  Number"; Code[30])
        {
            Caption = 'Registration  Number';
        }
        field(2; Name; Text[40])
        {
            Caption = 'Name';
        }
        field(3; Course; Text[40])
        {
            Caption = 'Course';
        }
        field(4; PhoneNumber; Integer)
        {
            Caption = 'Phone Number';
        }
        field(5; Email; Code[40])
        {
            Caption = 'Email';
        }
        field(6; Gender; Option)
        {
            OptionMembers = Male,Female;
        }
        field(7; ApplicationStatus; Option)
        {
            Caption = 'Application Status';
            OptionMembers = Approved,Pending,Rejected;
            OptionCaption = 'Approved,Pending,Rejected';

        }



    }
    keys
    {
        key(PK; "Registration  Number")
        {
            Clustered = true;
        }
    }
}
