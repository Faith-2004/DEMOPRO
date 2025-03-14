
table 50104 "Student Finance"
{
    Caption = 'Student Finance';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            Caption = 'Student ID';

        }
        field(2; "Student Name"; Text[100])
        {
            Caption = 'Student Name';

        }
        field(3; "Sponsorship Type"; Option)
        {
            Caption = 'Sponsorship Type';
            OptionMembers = "Self-Sponsored","Government-Sponsored","Other";


        }
        field(4; "Tuition Fees"; Decimal)
        {
            Caption = 'Tuition Fees';

        }
        field(5; "Scholarship Amount"; Decimal)
        {
            Caption = 'Scholarship Amount';

        }
        field(6; "Total Paid"; Decimal)
        {
            Caption = 'Total Paid';

        }
        field(7; "Balance Due"; Decimal)
        {
            Caption = 'Balance Due';

            Editable = false;
        }
        field(8; "Due Date"; Date)
        {
            Caption = 'Due Date';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin


        "Balance Due" := "Tuition Fees" - "Scholarship Amount" - "Total Paid";
    end;

    trigger OnModify()
    begin


        "Balance Due" := "Tuition Fees" - "Scholarship Amount" - "Total Paid";
    end;
}
