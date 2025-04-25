table 50146 "Disciplinary Records"
{
    Caption = 'Disciplinary Records';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Record ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(2; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = HillCrestRecords."Student ID";
        }

        field(3; "Student Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Teacher ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Teachers".TeacherID;
        }

        field(5; "Infraction Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Bullying,Cheating,Late,Disrespect,Fighting,Vandalism,Other;
        }

        field(6; "Action Taken"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Comments"; Text[250])
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(9; "Reviewed by Principal"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Escalated"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Record ID") { Clustered = true; }
    }

    trigger OnInsert()
    var
        StudentRec: Record HillCrestRecords;
        DiscRec: Record "Disciplinary Records";
        InfractionCount: Integer;
    begin

        if not "Reviewed by Principal" and not IsPrincipal() then
            Error('Only the principal can insert disciplinary records that have not been reviewed.');


        if "Student ID" <> '' then begin
            if StudentRec.Get("Student ID") then
                "Student Name" := StudentRec."Full Name";
        end;


        DiscRec.SetRange("Student ID", "Student ID");
        InfractionCount := DiscRec.Count;
        if InfractionCount >= 3 then
            "Escalated" := true;

    end;

    trigger OnModify()
    begin
        if not "Reviewed by Principal" and not IsPrincipal() then
            Error('Only the principal can modify unreviewed disciplinary records.');
    end;

    local procedure IsPrincipal(): Boolean
    var
        UserGroupMember: Record "User Group Member";
    begin
        UserGroupMember.SetRange("User Security ID", UserSecurityId());
        UserGroupMember.SetRange("User Group Code", 'HCPRINCIPAL');
        exit(UserGroupMember.FindFirst());
    end;
}
