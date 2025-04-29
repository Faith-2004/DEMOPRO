page 50203 "Dialog Box"
{
    Caption = 'Dialog Box';
    PageType = StandardDialog;


    layout
    {
        area(content)
        {
            group(Group)
            {
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter the fee amount';
                }
            }
        }
    }

    var
        Amount: Decimal;

    procedure GetAmount(): Decimal
    begin
        exit(Amount);
    end;
}
