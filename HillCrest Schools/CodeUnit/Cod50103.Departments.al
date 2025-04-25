codeunit 50103 Departments
{
    TableNo = Departments;

    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        DepartmentRec: Record "Departments";
    begin
        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'SCI';
        DepartmentRec.Name := 'Science Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'MATH';
        DepartmentRec.Name := 'Mathematics Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'ENG';
        DepartmentRec.Name := 'Language Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'Kisw';
        DepartmentRec.Name := 'Language Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'History';
        DepartmentRec.Name := 'Humanities Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'CRE';
        DepartmentRec.Name := 'Humanities Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'Chemistry';
        DepartmentRec.Name := 'Science Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'Physics';
        DepartmentRec.Name := 'Science Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'Biology';
        DepartmentRec.Name := 'Science Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'Business Studies';
        DepartmentRec.Name := 'Technical Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'Agriculture';
        DepartmentRec.Name := 'Technical Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'Computer Studies';
        DepartmentRec.Name := 'Technical Department';
        DepartmentRec.Insert(true);

        DepartmentRec.Init();
        DepartmentRec.DepartmentID := 'French';
        DepartmentRec.Name := 'Technical Department';
        DepartmentRec.Insert(true);







    end;
}
