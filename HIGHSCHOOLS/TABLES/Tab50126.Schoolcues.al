table 50126 "School cues"
{
    Caption = 'School cues';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Entry Number"; Integer)
        {
            AutoIncrement = true;


        }

        field(2; "Students Approved"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Student Applications" WHERE(Status = const(Approved)));
            Caption = 'Students Approved';

        }

        field(3; "BooksIssued"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Booklendings" WHERE(Status = const(Approved)));
            Caption = 'Total Borrowed Books';

        }
        field(4; "Books Available"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Booklendings" WHERE(Status = const(Open)));
            Caption = 'Total Available Books';

        }
        field(5; "Books Pending Request"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Booklendings" WHERE(Status = const(PendingApproval)));
            Caption = 'Total Books Pending Approval';

        }
        field(6; "Disciplinary Cases"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Displinary Issues");
            Caption = 'Number of Disciplinaries';

        }
        field(7; "Health Issues"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Student MedicalRecords");
            Caption = 'Medical Records';

        }



    }

    keys
    {
        key(PK; "Entry Number")
        {
            Clustered = true;
        }
    }
}

