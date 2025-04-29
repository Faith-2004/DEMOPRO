table 50148 "StudentMedicalRecords"
{
    Caption = 'Student Medical Records';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Record ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Record ID';
        }

        field(2; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = HillCrestRecords."Student ID";
            Caption = 'Student ID';
        }

        field(3; FullName; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Full Name';
        }

        field(4; "Medical Condition"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Medical Condition';
        }

        field(5; "Allergy"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Allergy';
        }

        field(6; "Immunization History"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Immunization History';
        }
        field(7; "No.Series"; Integer)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Record ID")
        {
            Clustered = true;
        }
    }
}