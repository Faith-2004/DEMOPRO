codeunit 50106 LibraryFines
{
    TableNo = LibraryFines;
    procedure ReturnBook(var BookTransaction: Record "Book Transactions")
var
    FineAmount: Decimal;
    FineEntry: Record LibraryFines;
begin
    if BookTransaction.Status <> BookTransaction.Status::Approved then
        Error('This book is not currently lent.');

    BookTransaction."Return Date" := Today;
    BookTransaction.Status := BookTransaction.Status::Open;
    BookTransaction.Modify();

   
    if BookTransaction."Return Date" > BookTransaction."Due Date" then begin
        FineAmount := CalculateFine(BookTransaction);

        FineEntry.Init();
        FineEntry."Student ID" := BookTransaction."Borrower Name";
        FineEntry."Book ID" := BookTransaction."Boook ID";
        FineEntry."Due Date" := BookTransaction."Due Date";
        FineEntry."Return Date" := BookTransaction."Return Date";
        FineEntry."Fine Amount" := FineAmount;
        FineEntry."Created DateTime" := CurrentDateTime;
        FineEntry.Insert();
    end;
end;
local procedure CalculateFine(BookTransaction: Record "Book Transactions"): Decimal
    var
        DaysLate: Integer;
        DailyFineRate: Decimal;
    begin
        DailyFineRate := 50.00; 
        DaysLate := BookTransaction."Return Date" - BookTransaction."Due Date";
        exit(DaysLate * DailyFineRate);
    end;

}   
  