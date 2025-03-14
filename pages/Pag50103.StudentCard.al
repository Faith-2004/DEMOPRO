page 50103 StudentCard
{
    Caption = 'StudentCard';
    PageType = Card;
    SourceTable = StudentRecords;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

            }
            field(StudentId; Rec.StudentId)
            {
                ApplicationArea = All;

            }
            field("Student Name"; Rec."Student Name")
            {
                ApplicationArea = All;
            }
            field(School; Rec.School)
            {
                ApplicationArea = All;
            }
            field(Department; Rec.Department)
            {
                ApplicationArea = All;
            }
            field(Course; Rec.Course)
            {
                ApplicationArea = All;
            }
            field(Year; Rec.Year)
            {
                ApplicationArea = All;
            }
            field(Semester; Rec.Semester)
            {
                ApplicationArea = All;
            }


        }

    }
    actions
    {
        area(Processing)
        {
            action(Save)
            {
                Caption = 'Save';
                ApplicationArea = All;
                Image = Save;
                trigger OnAction()
                begin
                    Rec.Modify()
                end;
            }
            action(Back)
            {
                Caption = 'Back';
                ApplicationArea = All;
                Image = Close;
                trigger OnAction()
                begin
                    CurrPage.Close();
                end;

            }
        }
    }

}