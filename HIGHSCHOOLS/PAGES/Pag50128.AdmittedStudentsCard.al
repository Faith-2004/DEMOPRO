page 50128 AdmittedStudentsCard
{
    Caption = 'AdmittedStudentsCard';
    PageType = Card;
    SourceTable = AdmittedStudents;


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StudentID field.', Comment = '%';
                }
                field(ApplicationID; Rec.ApplicationID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ApplicationID field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field(Nationality; Rec.Nationality)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nationality field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
                field("KCPE Index"; Rec."KCPE Index")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the KCPE Index field.', Comment = '%';
                }
                field("Previous School"; Rec."Previous School")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Previous School field.', Comment = '%';
                }
                field(ParentName; Rec.ParentName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ParentName field.', Comment = '%';
                }
                field(Relationship; Rec.Relationship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
                field(Phone1; Rec.Phone1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone1 field.', Comment = '%';
                }
                field(Phone2; Rec.Phone2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone2 field.', Comment = '%';
                }
                field("Attachments "; Rec."Attachments ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Attachments field.', Comment = '%';
                }
            }
        }
    }
}
