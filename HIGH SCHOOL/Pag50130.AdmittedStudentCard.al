page 50130 AdmittedStudentCard
{
    Caption = 'AdmittedStudentCard';
    PageType = Card;
    SourceTable = "Admitted Students";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Admission  Number"; Rec."Admission  Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Admission  Number field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class field.', Comment = '%';
                }
                field(Stream; Rec.Stream)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Stream field.', Comment = '%';
                }
                field("Class Teacher"; Rec."Class Teacher")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class Teacher field.', Comment = '%';
                }
            }
        }
    }
}
