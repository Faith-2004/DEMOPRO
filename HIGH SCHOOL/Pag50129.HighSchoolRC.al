page 50129 "HighSchool RC"
{
    Caption = 'HighSchool RC';
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
            group(Academics)
            {
                action(ApplicationFormList)
                {
                    ApplicationArea = All;
                    Caption = 'ApplicationList';
                    RunObject = page "ApplicationForm List";
                }
                action(AdmmittedStudents)
                {
                    ApplicationArea = All;
                    Caption = 'Admitted Students';
                    RunObject = page "ApplicationForm List";
                }
            }

        }

    }
}
