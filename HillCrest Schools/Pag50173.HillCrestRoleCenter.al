page 50173 "HillCrest RoleCenter"
{
    Caption = 'HillCrest RoleCenter';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Team Member")
            {
                ApplicationArea = All;

            }


        }
    }
    actions
    {
        area(Sections)
        {
            group(StudentRecords)
            {
                action(StudentApplications)
                {
                    ApplicationArea = All;
                    Caption = 'Student Applications';
                    RunObject = page HCApplication;
                }
                action(StudentsAdmitted)
                {
                    ApplicationArea = All;
                    Caption = 'Student Records';
                    RunObject = page HCRecords;
                }
            }

        }
        area(Embedding)
        {
            action(classes)
            {
                ApplicationArea = All;
                Caption = 'Classes';
                RunObject = page Class;
            }
            action(teachers)
            {
                ApplicationArea = All;
                Caption = 'Teachers';
                RunObject = page Teachers;
            }
        }

    }
}
