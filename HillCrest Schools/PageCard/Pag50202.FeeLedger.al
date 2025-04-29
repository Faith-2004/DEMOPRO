page 50202 "Fee Ledger"
{
    Caption = 'Fee Ledger';
    PageType = Card;
    SourceTable = "Fee Ledger Entry";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Date field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(Debit; Rec.Debit)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Debit field.', Comment = '%';
                }
                field(Credit; Rec.Credit)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Credit field.', Comment = '%';
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance field.', Comment = '%';
                }
                field(LastEntry; Rec.LastEntry)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LastEntry field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action("View Statement")
            {
                ApplicationArea = All;
                Caption = 'View Statement';
                Image = Print;

                trigger OnAction()
                var
                    Report50110: Report "Student Ledger Report";
                begin
                    Report50110.SetTableView(Rec);
                    Report50110.RunModal();
                end;
            }


            action("Apply Fee")
            {
                ApplicationArea = All;
                Caption = 'Apply Fee';
                Image = Line;

                trigger OnAction()
                var
                    AmountPage: Page "Dialog Box";
                    Amount: Decimal;
                    LedgerEntry: Record "Fee Ledger Entry";
                    LastEntry: Record "Fee Ledger Entry";
                    NewBalance: Decimal;
                begin

                    if AmountPage.RunModal() = Action::OK then begin
                        Amount := AmountPage.GetAmount();


                        LedgerEntry.Init();
                        LedgerEntry."Student ID" := Rec."Student ID";
                        LedgerEntry."Transaction Date" := Today;
                        LedgerEntry.Description := 'Fee Applied';
                        LedgerEntry.Debit := Amount;
                        LedgerEntry.Insert(true);


                        LastEntry.SetRange("Student ID", Rec."Student ID");
                        if LastEntry.FindLast() then
                            NewBalance := LastEntry.Balance;


                        Message('Fee of %1 applied. Current balance: %2', Amount, NewBalance);
                    end else
                        Message('Fee application was canceled.');
                end;
            }
            action("Post Payment")
            {
                ApplicationArea = All;
                Caption = 'Post Payment';
                Image = Payment;

                trigger OnAction()
                var
                    AmountPage: Page "Dialog Box";
                    Amount: Decimal;
                    LedgerEntry: Record "Fee Ledger Entry";
                    LastEntry: Record "Fee Ledger Entry";
                    NewBalance: Decimal;
                begin

                    if AmountPage.RunModal() = Action::OK then begin
                        Amount := AmountPage.GetAmount();


                        LedgerEntry.Init();
                        LedgerEntry."Student ID" := Rec."Student ID";
                        LedgerEntry."Transaction Date" := Today;
                        LedgerEntry.Description := 'Payment Received';
                        LedgerEntry.Credit := Amount;
                        LedgerEntry.Insert(true);


                        LastEntry.SetRange("Student ID", Rec."Student ID");
                        if LastEntry.FindLast() then
                            NewBalance := LastEntry.Balance;

                        Message('Payment of %1 recorded. Current balance: %2', Amount, NewBalance);
                    end else
                        Message('Payment posting was canceled.');
                end;
            }

        }
    }
}