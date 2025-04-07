page 50129 ApplicationLists
{
    Caption = 'ApplicationList';
    PageType = List;
    SourceTable = "Student Applications";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ApplicationID; Rec.ApplicationID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Id field.', Comment = '%';
                }
                field("Full Name"; Rec."FullName")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DOB field.', Comment = '%';
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
                field("Parent Name"; Rec."ParentName")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent Name field.', Comment = '%';
                }
                field(Relationship; Rec.Relationship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
                field("Phone 1"; Rec."Phone1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone 1 field.', Comment = '%';
                }
                field("Phone 2"; Rec."Phone2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone 2 field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
                field(Attachments; Rec."Attachments ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Attachments field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Open ApplicationCard")
            {
                Caption = 'View Student';
                ApplicationArea = All;
                RunObject = Page "ApplicationCard";
                RunPageLink = ApplicationID = field(ApplicationID);
            }
        }
    }
}
