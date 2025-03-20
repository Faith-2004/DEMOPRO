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
            part(AcademicsCues; "Academics Cues")
            {
                ApplicationArea = Basic, Suite;
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
                    RunPageView = where("Application Status" = filter(Accepted));
                }

                action(AdmmittedStudents)
                {
                    ApplicationArea = All;
                    Caption = 'Admitted Students';
                    RunObject = page "ApplicationForm List";
                    RunPageView = where("Application Status" = filter(Accepted));
                }


            }

        }

    }

}