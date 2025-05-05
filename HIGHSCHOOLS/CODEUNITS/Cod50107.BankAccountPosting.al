codeunit 50107 BankAccountPosting
{
    TableNo = BankAccount;

    procedure PostBankPayment(StudentNo: Code[20]; Amount: Decimal; BankAccountNo: Code[20]; Description: Text[100])
    var
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlPost: Codeunit "Gen. Jnl.-Post";
        GenJnlTemplate: Record "Gen. Journal Template";
        GenJnlBatch: Record "Gen. Journal Batch";
    begin

        GenJnlTemplate.Get('GENERAL');
        GenJnlBatch.Get('GENERAL', 'DEFAULT');


        GenJnlLine.Init();
        GenJnlLine."Journal Template Name" := GenJnlTemplate.Name;
        GenJnlLine."Journal Batch Name" := GenJnlBatch.Name;
        GenJnlLine."Posting Date" := Today;
        GenJnlLine."Document Type" := GenJnlLine."Document Type"::Payment;
        GenJnlLine."Account Type" := GenJnlLine."Account Type"::"Bank Account";
        GenJnlLine."Account No." := BankAccountNo;
        GenJnlLine."Amount" := -Amount;
        GenJnlLine.Description := Description;


        GenJnlLine.Insert();
        GenJnlPost.Run(GenJnlLine);
    end;

    procedure ReverseBankEntry(BankEntryNo: Integer)
    var
        BankLedger: Record "Bank Account Ledger Entry";
        GenJnlPostReversal: Codeunit "Gen. Jnl.-Post Reverse";
        ReversalEntry1: Record "Reversal Entry";
        ReversalEntry2: Record "Reversal Entry";
    begin
        if BankLedger.Get(BankEntryNo) then begin
            if BankLedger."Reversed" then
                Error('Entry is already reversed.');

            GenJnlPostReversal.Reverse(ReversalEntry1, ReversalEntry2);
        end else
            Error('Bank ledger entry not found.');
    end;

}
