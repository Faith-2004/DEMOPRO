table 50150 "HillCrest Setup"
{
    Caption = 'HiilCrest Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = SystemMetadata;
        }

        field(2; "Medical Record Nos."; Code[20])
        {
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
            Caption = 'Medical Record Nos.';
        }
        field(3; "Clinic Visit Nos."; Code[20])
        {
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
            Caption = ' Clinic Visit Nos.';
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
