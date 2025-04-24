table 50138 "School Teachers"
{
    Caption = 'School Teachers';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Teacher ID"; Code[20])
        {
            Caption = 'Teacher ID';

        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';

        }
        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';

        }
        field(4; "Gender"; Option)
        {
            OptionMembers = Male,Female;
            OptionCaption = 'Male,Female';
        }
        field(5; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';

        }
        field(6; "Phone Number"; Text[20])
        {
            Caption = 'Phone Number';

        }
        field(7; "Email Address"; Text[100])
        {
            Caption = 'Email Address';

        }
        field(8; "National ID"; Code[20])
        {
            Caption = 'National ID';

        }
        field(9; "Department"; Code[20])
        {
            Caption = 'Department';

        }
        field(10; "Employment Date"; Date)
        {
            Caption = 'Employment Date';

        }

    }
    keys
    {
        key(pk; "Teacher ID")
        {
            Clustered = true;
        }
    }
}
