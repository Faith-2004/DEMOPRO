table 50139 "Fee Structure"
{
    Caption = 'Fee Structure';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Fee Structure ID"; Code[20])
        {
            Caption = 'Fee Structure ID';
        }
        field(2; "Academic Year"; Code[20])
        {
            Caption = 'Academic Year';
        }
        field(3; Term; Option)
        {
            OptionMembers = FirstTerm,SecondTerm,ThirdTerm;
            OptionCaption = 'First Term,Second Term,Third Term';
        }
        field(4; Class; Code[20])
        {
            Caption = 'Class';
            TableRelation = "Student Classes"."Class Name";
        }
        field(7; category; Option)
        {
            OptionMembers = Tuition,Boarding,Transport,Development,Other;
            OptionCaption = 'Tuition, Boarding, Transport, Development, Other';
            DataClassification = ToBeClassified;
        }
        field(5; "Total Fee Amount"; Decimal)
        {
            Caption = 'Total Fee Amount';
        }
        field(6; "Created Date"; Date)
        {
            Caption = 'Created Date';
        }
    }
    keys
    {
        key(PK; "Fee Structure ID")
        {
            Clustered = true;
        }
    }
}
