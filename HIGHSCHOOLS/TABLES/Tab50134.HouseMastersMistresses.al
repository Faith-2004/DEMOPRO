table 50134 "House Masters/Mistresses"
{
    Caption = 'House Masters/Mistresses';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; TeacherID; Integer)
        {
            TableRelation = "Teachers".TeacherID;
            Caption = 'TeacherID';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; HouseCode; Code[100])
        {
            TableRelation = "Houses".HouseCode;
            Caption = 'HouseCode';
        }
        field(4; HouseName; Text[100])
        {

            Caption = 'HouseName';
        }

    }
    keys
    {
        key(PK; TeacherID)
        {
            Clustered = true;
        }
    }
}
