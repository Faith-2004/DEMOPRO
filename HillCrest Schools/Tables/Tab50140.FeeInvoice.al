table 50140 "Fee Invoice"
{
    Caption = 'Fee Invoice';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Invoice ID"; Code[20])
        {
            Caption = 'Invoice ID';
        }
        field(2; "Student ID"; Code[20])
        {
            Caption = 'Student ID';
            TableRelation = HillCrestRecords."Student ID";

        }
        field(9; "Full Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Name';
            TableRelation = HillCrestRecords."Full Name";
        }
        field(3; "Fee Structure ID"; Code[20])
        {
            Caption = 'Fee Structure ID';
            TableRelation = "Fee Structure"."Fee Structure ID";
        }
        field(4; "Discount Amount"; Decimal)
        {
            Caption = 'Fee Discount';
        }

        field(5; "Invoice Date"; Date)
        {
            Caption = 'Invoice Date';
        }
        field(6; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(7; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
        }
        field(8; "Status "; Option)
        {
            OptionMembers = Paid,PartiallyPaid,Unpaid;
            OptionCaption = 'Paid,Partially Paid,Unpaid ';
        }
    }
    keys
    {
        key(PK; "Invoice ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        StudentRec: Record "HillCrestRecords";
        ScholarshipRec: Record "Scholarship";
        CoveragePct: Decimal;
    begin

        if StudentRec.Get("Student ID") then begin
            if StudentRec."Sponsorship Type" = StudentRec."Sponsorship Type"::Scholarship then begin

                if ScholarshipRec.Get(StudentRec."Student ID") then begin
                    CoveragePct := ScholarshipRec."Coverage Percentage";
                    "Discount Amount" := ("Total Amount" * CoveragePct) / 100;
                end;
            end;
        end;
    end;

}
