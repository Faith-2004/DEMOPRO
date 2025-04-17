table 50132 "House Assignment"
{
    Caption = 'House Assignment';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; StudentID; Integer)
        {
            Caption = 'StudentID';
            TableRelation = "AdmittedStudents"."Student ID";
        }
        field(2; StudentName; Text[100])
        {
            Caption = 'StudentName';
        }
        field(3; RoomNo; Integer)
        {
            Caption = 'RoomNo';
        }
        field(4; HouseName; Text[100])
        {
            Caption = 'HouseName';
        }
        field(5; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(6; "End Date"; Date)
        {
            Caption = 'End Date';
        }
    }
    keys
    {
        key(PK; StudentID)
        {
            Clustered = true;
        }
    }
}
