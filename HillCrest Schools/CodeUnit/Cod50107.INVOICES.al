codeunit 50107 "Student Finance Mgt."
{
    TableNo = "Fee Payment Entry";



    procedure GenerateInvoices(StudentID: Code[20])
    var
        StudentRec: Record "Student Table";
        FeeStructure: Record "Fee Structure";
        FeeLedger: Record "Student Fee Ledger";
        EntryNo: Integer;
    begin
        // Get student details
        if not StudentRec.Get(StudentID) then
            Error('Student %1 not found.', StudentID);

        // Loop fee structure based on student class & term
        FeeStructure.SetRange("Class Code", StudentRec."Class Code");
        FeeStructure.SetRange("Term", StudentRec."Current Term");
        FeeStructure.SetRange("Academic Year", StudentRec."Academic Year");
        if FeeStructure.IsEmpty then
            Error('No fee structure defined for this class/term.');

        FeeStructure.FindSet();
        repeat
            // Check if fee already exists to avoid duplicates
            if FeeAlreadyInvoiced(StudentID, FeeStructure.Code) then
                next;

            FeeLedger.Init();
            FeeLedger."Student ID" := StudentID;
            FeeLedger."Invoice No." := Format(CreateGuid());
            FeeLedger."Fee Code" := FeeStructure.Code;
            FeeLedger."Amount" := FeeStructure.Amount;
            FeeLedger."Payment Status" := FeeLedger."Payment Status"::Unpaid;
            FeeLedger."Due Date" := Today + 30; // Default due in 30 days
            FeeLedger."Posted" := false;
            FeeLedger.Insert(true);
        until FeeStructure.Next() = 0;
    end;

    local procedure FeeAlreadyInvoiced(StudentID: Code[20]; FeeCode: Code[20]): Boolean
    var
        FeeLedger: Record "Student Fee Ledger";
    begin
        FeeLedger.SetRange("Student ID", StudentID);
        FeeLedger.SetRange("Fee Code", FeeCode);
        exit(FeeLedger.FindFirst());
    end;
}
