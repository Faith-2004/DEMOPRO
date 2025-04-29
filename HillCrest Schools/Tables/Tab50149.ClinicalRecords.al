table 50149 "Clinical Records"
{
    Caption = 'Clinical Records';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "VisitID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Visit ID';
            NotBlank = true;
        }

        field(2; "StudentID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student ID';
            TableRelation = HillCrestRecords."Student ID";

        }

        field(3; "VisitDate"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Visit Date';
        }

        field(4; "Diagnosis"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Diagnosis';
        }

        field(5; "Treatment"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Treatment';
        }

        field(6; "IsEmergency"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Is Emergency Case?';
            Editable = true;
        }
        field(7; "No.Series"; Integer)
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(PK; "VisitID")
        {
            Clustered = true;
        }
    }

}