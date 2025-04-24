table 50135 HillcrestApplications
{
    Caption = 'HillcrestApplications';
    DataClassification = ToBeClassified;



    fields
    {
        field(1; "Application ID"; Code[20])
        {
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
        field(5; "Course Applied"; Code[20])
        {
            Caption = 'Class Applied';
            DataClassification = ToBeClassified;
        }
        field(6; "Application Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Status"; Option)
        {
            OptionMembers = Pending,Approved,Rejected;
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
        key(PK; "Application ID") { Clustered = true; }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NoSeriesSetup: Record "No. Series";
        SeriesCode: Code[20];
    begin
        if "Application ID" = '' then begin

            SeriesCode := 'APPNO.';


            "Application ID" := NoSeriesMgt.GetNextNo(SeriesCode, Today(), true);
        end;
    end;
}
