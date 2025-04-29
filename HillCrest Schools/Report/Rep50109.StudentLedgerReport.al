report 50109 "Student Ledger Report"
{
    Caption = 'Student Ledger Report';
    DefaultLayout = RDLC;
    RDLCLayout = './Report Layout/StudentLedgerEntry.rdl';
    dataset
    {
        dataitem(FeeLedgerEntry; "Fee Ledger Entry")
        {
            column(EntryNo; "Entry No.")
            {
            }
            column(StudentID; "Student ID")
            {
            }
            column(TransactionDate; "Transaction Date")
            {
            }
            column(Description; Description)
            {
            }
            column(Debit; Debit)
            {
            }
            column(Credit; Credit)
            {
            }
            column(Balance; Balance)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
