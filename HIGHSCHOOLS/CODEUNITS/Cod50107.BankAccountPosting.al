codeunit 50107 BankAccountPosting
{
    TableNo = "BankAccount";



    procedure PostBankPayment(StudentNo: Code[20]; Amount: Decimal; BankAccountNo: Code[20]; Description: Text[100])
    var
        generalJournal: Record "Gen. Journal Line";
        BankAccount: Record "Bank Account";


        GenJnlPost: Codeunit "Gen. Jnl.-Post";
        GenJnlTemplate: Record "Gen. Journal Template";
        GenJnlBatch: Record "Gen. Journal Batch";
    begin

        GenJnlTemplate.Get('GENERAL');
        GenJnlBatch.Get('GENERAL', 'DEFAULT');


        generalJournal.Init();
        generalJournal."Journal Template Name" := GenJnlTemplate.Name;

        generalJournal."Posting Date" := Today;
        generalJournal."Document Type" := generalJournal."Document Type"::Payment;
        generalJournal."Account Type" := generalJournal."Account Type"::"Bank Account";
        generalJournal."Account No." := BankAccountNo;
        generalJournal."Amount" := -Amount;
        generalJournal.Description := Description;


        generalJournal.Insert();
        GenJnlPost.Run(generalJournal);
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
