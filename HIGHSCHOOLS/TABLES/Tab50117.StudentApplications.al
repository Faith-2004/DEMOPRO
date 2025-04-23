table 50117 "Student Applications"
{
    Caption = 'Student Applications';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; ApplicationID; Integer)
        {
            Caption = 'ApplicationID';
            AutoIncrement = false;
        }
        field(2; FullName; Text[50])
        {
            Caption = 'FullName';
        }
        field(3; DOB; Date)
        {
            trigger OnValidate()
            var
                Today: Date;
                Age: Integer;
            begin
                Today := Today;
                Age := Date2DMY(Today, 3) - Date2DMY("DOB", 3);
                if Age < 13 then
                    Error('Applicant must be at least 13 years old.');
            end;
        }
        field(4; Gender; Option)
        {
            OptionMembers = Male,Female;
            OptionCaption = 'Male,Female';
            DataClassification = ToBeClassified;
        }
        field(5; Nationality; Text[50])
        {
            Caption = 'Nationality';
        }
        field(6; "KCPE Index"; Integer)
        {
            Caption = 'KCPE Index';
        }
        field(7; "Previous School"; Text[50])
        {
            Caption = 'Previous School';
        }
        field(8; ParentName; Text[60])
        {
            Caption = 'ParentName';
        }
        field(9; Relationship; Option)
        {
            OptionMembers = Mother,Father,Guardian;
            OptionCaption = 'Mother,Father,Guardian';
            DataClassification = ToBeClassified;
        }
        field(10; Phone1; Text[15])
        {
            Caption = 'Phone1';
        }
        field(11; Phone2; Text[15])
        {
            Caption = 'Phone2';
        }
        field(12; Email; Text[50])
        {
            Caption = 'Email';
        }
        field(13; "Attachments "; Blob)
        {
            Caption = 'Attachments ';
        }
        field(14; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Pending,Approved,Rejected;
            OptionCaption = 'Pending,Approved,Rejected';
        }
    }
    keys
    {
        key(PK; ApplicationID)
        {
            Clustered = true;
        }
    }
}
