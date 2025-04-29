table 50147 "SchoolCues"
{
    Caption = 'School Cues';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Number Of Students"; Integer)
        {
            Caption = 'Number Of Students';
            FieldClass = FlowField;
            CalcFormula = count(HillCrestRecords);
        }
        field(3; "Number of Teachers"; Integer)
        {
            Caption = 'Number of Teachers';
            FieldClass = FlowField;
            CalcFormula = count("School Teachers");
        }
        field(4; Classes; Integer)
        {
            Caption = 'Classes';
            FieldClass = FlowField;
            CalcFormula = count("Student Classes");
        }
        field(5; "Subjects Offered"; Integer)
        {
            Caption = 'Subjects Offered';
            FieldClass = FlowField;
            CalcFormula = count(Subjects);
        }
        field(6; "Scholarship Students"; Integer)
        {
            Caption = 'Scholarship Students';
            FieldClass = FlowField;
            CalcFormula = count(Scholarship);
        }
        field(7; "Departments"; Integer)
        {
            Caption = 'Subjects Departments';
            FieldClass = FlowField;
            CalcFormula = count(Departments);
        }

        field(8; "Number of Disciplinary Cases;"; Integer)
        {
            Caption = 'Disciplinary Cases';
            FieldClass = FlowField;
            CalcFormula = count("Disciplinary Records");
        }
        field(9; "Total Borrowed Books"; Integer)
        {

            FieldClass = FlowField;
            CalcFormula = Count("Book Transactions" WHERE(Status = const(Approved)));
            Caption = 'Total Borrowed Books';
        }
        field(10; "Available Books"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("books" WHERE("Borrowed" = const(false)));
            Caption = 'Available Books';
        }
        field(11; "Rejected Approvals"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Book Transactions" WHERE(Status = const(RejectedApprovals)));
            Caption = 'Rejected Approvals';
        }
        field(13; "Pending Approvals"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Book Transactions" WHERE(Status = const(PendingApproval)));
            Caption = 'Rejected Books';
        }

    }


    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
