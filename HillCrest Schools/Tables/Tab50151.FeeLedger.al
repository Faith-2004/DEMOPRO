table 50151 "Fee Ledger Entry"
{
    Caption = 'Fee Ledger';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }

        field(2; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = HillCrestRecords."Student ID";
        }

        field(3; "Transaction Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(5; Debit; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(6; Credit; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(7; Balance; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; LastEntry; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
        key(StudentID; "Student ID") { }
    }

    trigger OnInsert()
    var
        LastEntry: Record "Fee Ledger Entry";
    begin
        if GetLast(LastEntry, "Student ID") then
            Balance := LastEntry.Balance + Debit - Credit
        else
            Balance := Debit - Credit;
    end;

    procedure GetLast(var LastEntry: Record "Fee Ledger Entry"; StudentID: Code[20]): Boolean
    begin
        LastEntry.SetRange("Student ID", StudentID);
        if LastEntry.FindLast() then
            exit(true);
        exit(false);
    end;
}
