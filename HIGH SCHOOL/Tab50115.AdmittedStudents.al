table 50115 "Admitted Students"
{
    Caption = 'Admitted Students';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Admission  Number"; Integer)
        {
            Caption = 'Admission  Number';
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                custom: Record Customer;
            begin
                if custom.get("Admission  Number") then begin
                    Rec."Name" := custom.Name;
                    //Modify();
                    Message('Student of name %1, phone number %2 and Address of %3', "Admission  Number", "Name");
                end;

            end;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Age; Integer)
        {
            Caption = 'Age';
        }
        field(4; Gender; Option)
        {
            OptionCaption = 'Female,Male';
            OptionMembers = Female,Male;
        }
        field(5; Class; Integer)
        {
            Caption = 'Class';
        }
        field(6; Stream; Text[40])
        {
            Caption = 'Stream';
        }
        field(7; "Class Teacher"; Text[50])
        {
            Caption = 'Class Teacher';
        }
    }
    keys
    {
        key(PK; "Admission  Number")
        {
            Clustered = true;
        }
    }
}
