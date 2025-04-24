table 50136 HillCrestRecords
{
    Caption = 'HillCrestRecords';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            Caption = 'Reg No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Full Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Date of Birth"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Gender"; Option)
        {
            OptionMembers = Male,Female,Other;
            DataClassification = ToBeClassified;
        }
        field(5; "Enrolled Course"; Code[20])
        {
            Caption = 'Class Enrolled';
            DataClassification = ToBeClassified;
        }
        field(6; "Enrollment Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
}
