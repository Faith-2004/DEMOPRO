codeunit 50108 generalJournal
{
    TableNo = generalJournals;


    procedure InsertGenJnlLine(
        JournalTemplateName: Code[10];
        LineNo: Integer;
        AccountType: Enum "Gen. Journal Account Type";
        AccountNo: Code[20];
        PostingDate: Date;
        DocumentType: Enum "Gen. Journal Document Type";
        DocumentNo: Code[20];
        Description: Text[100];
        VATPercent: Decimal;
        BalAccountNo: Code[20];
        CurrencyCode: Code[10];
        Amount: Decimal)
    var
        GenJnlLine: Record "Gen. Journal Line";
    begin
        GenJnlLine.Init();
        GenJnlLine."Journal Template Name" := JournalTemplateName;
        GenJnlLine."Line No." := LineNo;
        GenJnlLine."Account Type" := AccountType;
        GenJnlLine."Account No." := AccountNo;
        GenJnlLine."Posting Date" := PostingDate;
        GenJnlLine."Document Type" := DocumentType;
        GenJnlLine."Document No." := DocumentNo;
        GenJnlLine.Description := Description;
        GenJnlLine."VAT %" := VATPercent;
        GenJnlLine."Bal. Account No." := BalAccountNo;
        GenJnlLine."Currency Code" := CurrencyCode;
        GenJnlLine.Amount := Amount;

        GenJnlLine.Insert(true);
    end;

    procedure UpdateDescription(JournalTemplateName: Code[10]; LineNo: Integer; NewDescription: Text[100])
    var
        GenJnlLine: Record "Gen. Journal Line";
    begin
        if GenJnlLine.Get(JournalTemplateName, LineNo) then begin
            GenJnlLine.Description := NewDescription;
            GenJnlLine.Modify(true);
        end;
    end;

    procedure DeleteGenJnlLine(JournalTemplateName: Code[10]; LineNo: Integer)
    var
        GenJnlLine: Record "Gen. Journal Line";
    begin
        if GenJnlLine.Get(JournalTemplateName, LineNo) then
            GenJnlLine.Delete();
    end;

    procedure GetLineAmount(JournalTemplateName: Code[10]; LineNo: Integer): Decimal
    var
        GenJnlLine: Record "Gen. Journal Line";
    begin
        if GenJnlLine.Get(JournalTemplateName, LineNo) then
            exit(GenJnlLine.Amount)
        else
            exit(0);
    end;
}
