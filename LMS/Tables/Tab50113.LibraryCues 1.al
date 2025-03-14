table 50113 "Library Cues"
{
    Caption = 'Library Cues';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "EntryNo"; integer)
        {
            AutoIncrement = true;
        }
        field(2; "Total Borrowed Books"; Integer)
        {

            FieldClass = FlowField;
            CalcFormula = Count("Book Lending" WHERE(Status = const(Approved)));
            Caption = 'Total Borrowed Books';
        }
        field(3; "Available Books"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Book" WHERE("Borrowed" = const(false)));
            Caption = 'Available Books';
        }
        field(4; "Rejected Approvals"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Book Lending" WHERE(Status = const(RejectedApprovals)));
            Caption = 'Rejected Approvals';
        }
        field(5; "Pending Approvals"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Book Lending" WHERE(Status = const(PendingApproval)));
            Caption = 'Rejected Books';
        }

    }
    keys
    {
        key(PK; "EntryNo")
        {

        }
    }
}

