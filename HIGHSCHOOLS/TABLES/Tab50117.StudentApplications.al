table 50117 "Student Applications"
{
    Caption = 'Student Applications';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; EntryNumber; Integer)
        {
            DataClassification = ToBeClassified;

        }


        field(2; ApplicationID; Integer)
        {
            Caption = 'ApplicationID';


        }
        field(3; FullName; Text[50])
        {
            Caption = 'FullName';
        }
        field(4; DOB; Date)
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
        field(5; Gender; Option)
        {
            OptionMembers = Male,Female;
            OptionCaption = 'Male,Female';
            DataClassification = ToBeClassified;
        }
        field(6; Nationality; Text[50])
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
        field(15; "Status"; Option)
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
    trigger OnInsert()
    var
        LastApplication: Record "Student Applications";
    begin

        if LastApplication.FindLast() then
            Rec."ApplicationID" := LastApplication."ApplicationID" + 1
        else
            Rec."ApplicationID" := 1;
    end;

}
