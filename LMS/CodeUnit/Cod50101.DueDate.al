codeunit 50101 DueDate
{
    TableNo = "Book Lending";

    procedure CalculateFine(BorrowEntry: Record 50112)
    var
        OverdueDays: Integer;
        FineAmount: Decimal;
        FineRate: Decimal;
    begin
        FineRate := 100; // Fine per day in Ksh

        if (BorrowEntry."Return Date" = 0D) and (Today > BorrowEntry."Due Date") then begin
            OverdueDays := Today - BorrowEntry."Due Date";
            FineAmount := OverdueDays * FineRate;

            BorrowEntry."Fine" := FineAmount;
            BorrowEntry.Modify();
        end;
    end;
}
