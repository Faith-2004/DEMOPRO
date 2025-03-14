page 50104 ConsumerList
{
    ApplicationArea = All;
    Caption = 'ConsumerList';
    PageType = List;
    SourceTable = Consumer;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("primary key"; Rec.ConsumerId)
                {
                    ApplicationArea = All;
                }
                field("Consumer Name"; Rec."Consumer Name")
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = Basic, Suite;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = Basic, Suite;
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = Basic, Suite;
                }
                field(State; Rec.State)
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
            action("Open ConsumerCard")
            {
                Caption = 'View Consumer';
                ApplicationArea = All;
                RunObject = page "ConsumerCard";

            }
        }
    }
}