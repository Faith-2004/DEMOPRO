codeunit 50102 ApplicationsProcessor
{

    procedure ApproveAndTransfer(ApplicationID: Code[20])
    var
        Application: Record "HillCrestApplications";
        Student: Record "HillCrestRecords";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        RegNoSeries: Code[20];
    begin
        RegNoSeries := 'REGNO.';

        if Application.Get(ApplicationID) then begin
            if Application.Status = Application.Status::Approved then begin
                Student.Init();
                Student."Student ID" := NoSeriesMgt.GetNextNo(RegNoSeries, Today(), true);
                Student."Full Name" := Application."Full Name";
                Student."Date of Birth" := Application."Date of Birth";
                Student.Gender := Application.Gender;
                Student."Enrolled Course" := Application."Course Applied";
                Student."Enrollment Date" := Today();
                Student.Insert();

                Application.Delete();
            end;
        end;
    end;
}