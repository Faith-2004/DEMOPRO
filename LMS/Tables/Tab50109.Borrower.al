table 50109 Borrower
{
    Caption = 'Borrower';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Borrower ID"; Code[40])
        {
            Caption = 'Borrower ID';
        }
        field(2; "Borrower Name"; Text[50])
        {
            Caption = 'Borrower Name';
        }
        field(3; "Card Number"; Code[50])
        {
            Caption = 'Card Number';
        }
        field(4; "Phone Number"; Code[40])
        {
            Caption = 'Phone Number';
        }
    }
    keys
    {
        key(PK; "Borrower ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        LibrarySetup: Record "Library Setup";
        NoSeriesMgnt: Codeunit NoSeriesManagement;
    begin
        if "Card Number" = '' then begin
            LibrarySetup.Get();
            NoSeriesMgnt.InitSeries(LibrarySetup."Card Number", LibrarySetup."Card Number", WorkDate(), "Card Number", LibrarySetup."Card Number");
        end;

    end;
}
