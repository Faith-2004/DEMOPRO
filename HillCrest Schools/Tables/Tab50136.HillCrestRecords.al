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

        field(8; "Nationality"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "KCPE Index"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Previous School"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Parent Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Relationship"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Phone 1"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Phone 2"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Attachments"; Media)
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
