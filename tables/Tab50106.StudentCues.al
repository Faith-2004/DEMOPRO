table 50106 "Student Cues"
{
    Caption = 'Student Cues';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; "entry number"; Integer)
        {
            Caption = 'Registered';
            FieldClass = FlowField;
            CalcFormula = count("Registration");


        }
        field(2; "Number of Students"; Integer)
        {
            Caption = 'Number of Students';
            FieldClass = FlowField;
            CalcFormula = count("StudentRecords");
        }
        field(3; Registered; Integer)
        {
            Caption = 'EntryNumber';
        }
        field(4; "Students with fee balance"; Integer)
        {
            Caption = 'Students with Balances';
            FieldClass = FlowField;
            CalcFormula = count(StudentRecords where(Balance = filter(> 0)));


        }
    }
    keys
    {
        key(PK; Registered)
        {

        }
    }
}
