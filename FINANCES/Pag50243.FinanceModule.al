page 50243 "Finance Module"
{
    Caption = 'Finance Module';
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
            group("Customers")
            {
                action(CustomersInfo)
                {
                    ApplicationArea = All;
                    Caption = 'Customers Info';
                    RunObject = page "CustomersInfo";
                }
            }
            group("Banking")
            {
                action(BankingInfo)
                {
                    ApplicationArea = All;
                    Caption = 'Banking Info';
                    RunObject = page "Banking Info Card";
                }
            }
            group("Posting Groups")
            {
                action(CustomersPostingGroup)
                {
                    ApplicationArea = All;
                    Caption = 'Customers Posting Group';
                    RunObject = page "CustomersPosting Group";
                }
                action(VendorsPostingGroup)
                {
                    ApplicationArea = All;
                    Caption = 'Vendors Posting Group';
                    RunObject = page "VendorsPosting Group";
                }
                action(bankPostingGroup)
                {
                    ApplicationArea = All;
                    Caption = 'Bank Posting Group';
                    RunObject = page "BankPostings";
                }
            }
        }
    }
}

