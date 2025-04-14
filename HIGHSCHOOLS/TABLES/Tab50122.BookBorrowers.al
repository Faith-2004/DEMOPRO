table 50122 BookBorrowers
{
    Caption = 'BookBorrowers';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; BorrowerID; Integer)
        {
            Caption = 'BorrowerID';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "Card Number"; Code[50])
        {
            Caption = 'Card Number';
        }
        field(4; "phone number"; Integer)
        {
            Caption = 'phone number';
        }
    }
    keys
    {
        key(PK; BorrowerID)
        {
            Clustered = true;
        }
    }
}
