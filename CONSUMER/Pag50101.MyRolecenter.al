page 50100 "My Role Center"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(RoleCenter)
        {
            part(Studentstats; "StudentStats")
            {
                ApplicationArea = All;
            }
            // part(ConsumerList; "Consumer List")
            // {
            //     ApplicationArea = All;
            // }
            // part(MyChart; "My Chart Part")
            // {
            //     ApplicationArea = All;
            // }
        }
    }

    actions
    {
        area(Embedding)
        {
            // action("Customers")
            // {
            //   ApplicationArea = All;
            // RunObject = page "Customer List";
            //}
            //action("Sales Orders")
            //{
            //  ApplicationArea = All;
            //RunObject = page "Sales Order List";
            // }
        }
        area(Sections)
        {
            group("Customers Management")

            {
                Visible = false;
                action("Customers2")
                {
                    ApplicationArea = All;
                    Caption = 'customers';
                    RunObject = page "Customer List";
                }
                action("Sales Orders2")
                {
                    ApplicationArea = All;
                    Caption = 'Sales Orders';
                    RunObject = page "Sales Order List";

                }

            }
            group("Consumer")
            {
                action("consumers")
                {
                    ApplicationArea = All;
                    Caption = 'Consumer Details';
                    RunObject = page "ConsumerList";
                    Visible = false;
                }

            }
            group("StudentRecords")
            {
                action(Students)
                {
                    ApplicationArea = All;
                    Caption = 'Student Details';
                    RunObject = page "StudentList";
                }
            }
            group("Application Form")
            {
                action(Forms)
                {
                    ApplicationArea = All;
                    Caption = 'Application Form';
                    RunObject = page "ApplicationList";
                }
                action(Registration)
                {
                    ApplicationArea = All;
                    Caption = 'Registration Form';
                    RunObject = page "Registration Card";
                }
            }

            group("Finances")
            {
                action(Finance)
                {
                    ApplicationArea = All;
                    Caption = 'Finance';
                    RunObject = page "Student Finance Card";
                }
                action(FinanceRegistration)
                {
                    ApplicationArea = All;
                    Caption = 'Finance Registration';
                    RunObject = page "Finance Registration List";
                }

            }

        }
        area(Processing)
        {
            action("Customer Statistics")
            {
                ApplicationArea = all;
                RunObject = page "Customer Entry Statistics";
            }
            action(ActionName)
            {
                ApplicationArea = basic, suite;
                RunObject = page "Purchase Order";
            }

        }
        area(Reporting)
        {


            action("Financial Reports")
            {
                ApplicationArea = all;
                RunObject = report "Analysis Report";

            }
            action("Statements")
            {
                ApplicationArea = all;
                RunObject = report Statement;
            }
        }
    }
}