table 50141 Scholarship
{
    Caption = 'Scholarship';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Scholarship ID"; Code[20])
        {
            Caption = 'Scholarship ID';
        }
        field(2; "Student ID"; Code[20])
        {
            Caption = 'Student ID';
            TableRelation = HillCrestRecords."Student ID";


        }
        field(3; "Sponsor Name"; Text[100])
        {
            Caption = 'Sponsor Name';
        }
        field(4; "Scholarship type"; Option)
        {
            OptionMembers = Full,Partial;
            OptionCaption = 'Full,Partial';
        }
        field(5; "Coverage Percentage"; Decimal)
        {
            Caption = 'Coverage Percentage';
        }
        field(6; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(7; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(8; "Approved By"; Text[100])
        {
            Caption = 'Approved By';
        }
        field(9; "Approval Date"; Date)
        {
            Caption = 'Approval Date';
        }
    }
    keys
    {
        key(PK; "Scholarship ID")
        {
            Clustered = true;
        }
    }
}
