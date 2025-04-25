table 50145 SubjectTeacher
{
    Caption = 'SubjectTeacher';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Subject ID"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "AllSubjects"."SubjectID";
        }

        field(2; "Teacher ID"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Teachers"."TeacherID";
        }
    }

    keys
    {
        key(PK; "Subject ID", "Teacher ID") { Clustered = true; }
    }
}
