table 50105 "Finance Registration"
{
    Caption = 'Finance Registration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; StudentId; Code[30])
        {
            Caption = 'StudentId';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Course; Text[50])
        {
            Caption = 'Course';
        }
        field(4; Year; Integer)
        {
            Caption = 'Year';
        }
        field(5; Semester; Integer)
        {
            Caption = 'Semester';
        }
        field(6; "Tution fee"; Decimal)
        {
            Caption = 'Tution fee';
        }
        field(7; TotalPaid; Decimal)
        {
            Caption = 'Total Paid';
        }
        field(8; BalanceDue; Decimal)
        {
            Caption = 'Balance Due';
        }

    }
    keys
    {
        key(PK; StudentId)
        {
            Clustered = true;
        }
    }
}
