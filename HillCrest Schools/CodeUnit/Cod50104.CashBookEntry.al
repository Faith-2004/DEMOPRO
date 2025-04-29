codeunit 50104 "Cash Book Entry"
{
    TableNo = "Cash Book";



    procedure PostCashTransaction(
     Date: Date;
     Type: Option "Fee Receipt","Payment","Donation","Other";
     Desc: Text[100];
     RefNo: Code[20];
     InAmt: Decimal;
     OutAmt: Decimal)
    var
        CashEntry: Record "Cash Book";
        LastEntry: Record "Cash Book";
        NewBalance: Decimal;
    begin

        LastEntry.Reset();
        LastEntry.SetCurrentKey("Transaction Date");
        LastEntry.Ascending(false);
        if LastEntry.FindFirst() then
            NewBalance := LastEntry.Balance
        else
            NewBalance := 0;


        NewBalance += InAmt - OutAmt;



        CashEntry.Init();
        CashEntry."Transaction Date" := Date;
        CashEntry."Transaction Type" := Type;
        CashEntry.Description := Desc;
        CashEntry."Reference No." := RefNo;
        CashEntry."Amount In" := InAmt;
        CashEntry."Amount Out" := OutAmt;
        CashEntry.Balance := NewBalance;
        CashEntry.Insert();


        Message('Transaction posted. New balance is %1', NewBalance);
    end;
}