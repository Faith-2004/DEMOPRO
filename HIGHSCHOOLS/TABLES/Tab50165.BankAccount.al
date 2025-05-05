table 50165 "BankAccount"
{
    Caption = 'Bank Account';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "EntryNo."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Bank Account No.';
        }
        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            ;
        }
        field(3; "Bank Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Account Number"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Current Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "EntryNo.") { Clustered = true; }
    }
}
