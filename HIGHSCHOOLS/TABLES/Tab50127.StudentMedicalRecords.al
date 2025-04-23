table 50127 "Student MedicalRecords"

{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Record ID"; Integer)
        {
            Caption = 'Record ID';
            AutoIncrement = true;
        }
        field(2; "ApplicationID"; Integer)
        {
            Caption = 'Student ID';
            TableRelation = AdmittedStudents;
        }
        field(3; "Medical Condition"; Text[100])
        {
            Caption = 'Medical Condition';
        }
        field(4; "Allergy"; Text[100])
        {
            Caption = 'Allergy';
        }
        field(5; "Immunization History"; Text[250])
        {
            Caption = 'Immunization History';
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
