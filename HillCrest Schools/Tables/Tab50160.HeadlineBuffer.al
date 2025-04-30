table 50160 "Headline Buffer"
{
    Caption = 'Headline Buffer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Headline; Text[200])
        {
            Caption = 'Headline';
        }
    }
    keys
    {
        key(PK; Headline)
        {
            Clustered = true;
        }
    }
}
