codeunit 50109 "Student Transaction posting"
{
 

    procedure PostStudentTransaction(StudentID: Code[20]; Amount: Decimal; PaymentMethod: Option Cash,Bank)
    var
        CashbookEntry: Record "Cashbook";
        BankEntry: Record "BankAccount";
        FeeEntry: Record "Financial Ledger";
        generalJournals: Record generalJournals;
        GenJournalLine: Record "Gen. Journal Line";
    begin
        
        if PaymentMethod = PaymentMethod::Cash then
         begin
            CashbookEntry.Init();
            CashbookEntry."StudentID" := StudentID;
            CashbookEntry.Amount := Amount;
            CashbookEntry.Insert();
        end else begin;
            BankEntry.Init();
            BankEntry."StudentID" := StudentID;
            BankEntry.Amount := Amount;
            BankEntry.Insert();
        end;

        // 2. Post to Fee Ledger
        FeeEntry.Init();
        FeeEntry."Student No." := StudentID;
        FeeEntry.Amount := -Amount; 
        FeeEntry.Insert();

        
        GenJournalLine.Init();
        GenJournalLine."Account Type" := GenJournalLine."Account Type"::Customer;
        GenJournalLine."Account No." := StudentID;
        GenJournalLine.Amount := Amount;
        GenJournalLine."Document Type" := GenJournalLine."Document Type"::Payment;
        GenJournalLine.Insert();

         Codeunit.Run(Codeunit::"Gen. Jnl.-Post Line", GenJournalLine);
    end;
}

    

