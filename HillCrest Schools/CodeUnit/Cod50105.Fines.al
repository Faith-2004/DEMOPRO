codeunit 50105 Fines
{
    TableNo = LibraryFines;

    procedure LendBook(var BookTransaction: Record "Book Transactions")
    var
        ExistingTransaction: Record "Book Transactions";
    begin

        if ExistingTransaction.Get("BookTransaction", BookTransaction."Borrower ID") then begin
            ExistingTransaction.SetRange("Borrower ID", BookTransaction."Borrower ID");
            ExistingTransaction.SetRange(Status, ExistingTransaction.Status::Approved);
            ExistingTransaction.SetFilter("Due Date", '<%1', Today);
            if ExistingTransaction.FindFirst() then
                Error('This student has overdue books and cannot borrow more until they are returned.');
        end;


        if BookTransaction.Status = BookTransaction.Status::Approved then
            Error('This book is already lent.');

        BookTransaction."Borrowing Date" := Today;
        BookTransaction."Due Date" := CalcDate('15D', Today);
        BookTransaction.Status := BookTransaction.Status::Approved;
        BookTransaction.Modify();
    end;
}