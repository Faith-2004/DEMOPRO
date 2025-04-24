page 50170 HCApllications
{
    Caption = 'HCApllications';
    PageType = Card;
    SourceTable = HillcrestApplications;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Application ID"; Rec."Application ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application ID field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("Class Applied"; Rec."Course Applied")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Applied field.', Comment = '%';
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Date field.', Comment = '%';
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
        area(processing)
        {
            action(ApproveAndAdmit)
            {
                ApplicationArea = All;
                Caption = 'Approve and Admit';
                Image = Approve;
                trigger OnAction()
                var
                    Processor: Codeunit "ApplicationsProcessor";
                begin
                    Rec.Status := Rec.Status::Approved;
                    Rec.Modify();
                    Processor.ApproveAndTransfer(Rec."Application ID");
                end;
            }
        }
    }

}
