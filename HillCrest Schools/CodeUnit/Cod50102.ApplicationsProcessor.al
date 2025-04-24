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
                Student."Nationality" := Application."Nationality";
                Student."KCPE Index" := Application."KCPE Index";
                Student."Previous School" := Application."Previous School";
                Student."Parent Name" := Application."Parent Name";
                Student."Relationship" := Application."Relationship";
                Student."Phone 1" := Application."Phone 1";
                Student."Phone 2" := Application."Phone 2";
                Student."Email" := Application."Email";
                Student."Attachments" := Application."Attachments";

                Student.Insert();

                Application.Delete();
            end;
        end;
    end;
}