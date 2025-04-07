page 50133 HighSchoolRolecenter
{
    Caption = 'HighSchoolRolecenter';
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
            group(StudentApplications)
            {
                action(ApplicationLists)
                {
                    Caption = 'Application List';
                    ApplicationArea = All;
                    RunObject = page "ApplicationLists";

                }
            }
        }
    }

}
