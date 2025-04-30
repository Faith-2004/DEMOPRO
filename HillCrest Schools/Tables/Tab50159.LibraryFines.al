table 50159 LibraryFines
{
    Caption = 'LibraryFines';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
        }
        field(2; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;


        }
        field(3; "Book ID"; Code[20])
        {
            DataClassification = ToBeClassified;


        }
        field(4; "Return Date"; Date)
        {
            DataClassification = ToBeClassified;


        }
        field(5; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;


        }
        field(6; "Fine Amount"; Decimal)
        {
            DataClassification = ToBeClassified;


        }
        field(7; "Created DateTime"; DateTime)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }
}
