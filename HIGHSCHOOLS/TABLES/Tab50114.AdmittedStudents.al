table 50114 AdmittedStudents
{
    Caption = 'AdmittedStudents';
    DataClassification = ToBeClassified;


    fields
    {

        field(1; "Student ID"; Code[20])
        {
            Caption = 'StudentID';

        }

        field(2; "ApplicationID"; Code[20])
        {
            TableRelation = "Student Applications".ApplicationID;
            Caption = 'ApplicationID';
        }

        field(3; "Full Name"; Text[100])
        {
            Caption = 'Full Name';

        }

        field(4; "DOB"; Date)
        {
            Caption = 'Date of Birth';

        }

        field(5; "Gender"; Option)
        {
            OptionMembers = Male,Female;
            OptionCaption = 'Male,Female';

        }

        field(6; "Nationality"; Text[100])
        {
            Caption = 'Nationality';

        }

        field(7; "KCPE Index"; Integer)
        {
            Caption = 'KCPE Index';
        }
        field(8; "Previous School"; Text[50])
        {

            Caption = 'Previous School';
        }
        field(9; ParentName; Text[60])
        {
            Caption = 'ParentName';
        }
        field(10; Relationship; Option)
        {
            OptionMembers = Mother,Father,Guardian;
            OptionCaption = 'Mother,Father,Guardian';
            DataClassification = ToBeClassified;
        }
        field(11; Phone1; Text[15])
        {
            Caption = 'Phone1';
        }
        field(12; Phone2; Text[15])
        {
            Caption = 'Phone2';
        }
        field(13; Email; Text[50])
        {
            Caption = 'Email';
        }
        field(14; "Attachments "; Blob)
        {
            Caption = 'Attachments ';
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
