table 50101 StudentRecords
{
    Caption = 'StudentRecords';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; StudentId; Code[40])
        {
            Caption = 'StudentId';
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                custom: Record Customer;
            begin
                if custom.get(StudentId) then begin
                    Rec."Student Name" := custom.Name;
                    Rec."PhoneNumber" := custom."Phone No." + '/' + custom."Mobile Phone No.";
                    Rec.Address := CUSTOM.Address + '/' + custom."Address 2";
                    Rec.Balance := custom.Balance;
                    //Modify();
                    Message('Student of name %1, phone number %2 and Address of %3', "Student Name", PhoneNumber, Address);
                end;

            end;

        }
        field(2; "Student Name"; Text[50])
        {
            Caption = 'Student Name';
        }
        field(3; School; Text[20])
        {
            Caption = 'School';
        }
        field(4; Department; Text[40])
        {
            Caption = 'Department';
        }
        field(5; Course; Text[50])
        {
            Caption = 'Course';
        }
        field(6; Year; Integer)
        {
            Caption = 'Year';
        }
        field(7; Semester; Integer)
        {
            Caption = 'Semester';
        }
        field(8; Balance; Decimal)
        {
            Caption = 'balance';
        }
        field(9; PhoneNumber; Code[60])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(10; Address; Code[60])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
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
