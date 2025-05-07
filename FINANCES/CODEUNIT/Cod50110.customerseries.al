codeunit 50110 customerseries
{
    TableNo = CustomerSetup;

    procedure CreateCustomer(Name: Text[100])
    var
        CustomerInfoRec: Record CustomersInfo;
        CustomerSetup: Record "CustomerSetup";
        NoSeriesMgt: Codeunit "NoSeriesManagement";
    begin
        if not CustomerSetup.FindFirst() then
            Error('Customer Setup record not found.');
        CustomerInfoRec.Init();
        CustomerInfoRec."Customer ID" := NoSeriesMgt.GetNextNo(CustomerSetup."CustomerID", Today, true);
        CustomerInfoRec.Name := Name;
        CustomerInfoRec.Insert();
    end;
}