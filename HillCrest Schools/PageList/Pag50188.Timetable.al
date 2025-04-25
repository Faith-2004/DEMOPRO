page 50188 Timetable
{
    Caption = 'Timetable';
    PageType = List;
    SourceTable = "Class Timetable";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Timetable ID"; Rec."Timetable ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Timetable ID field.', Comment = '%';
                }
                field("Class ID"; Rec."Class ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class ID field.', Comment = '%';
                }
                field("Subject ID"; Rec."Subject ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subject ID field.', Comment = '%';
                }
                field("Teacher ID"; Rec."Teacher ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher ID field.', Comment = '%';
                }
                field(Day; Rec.Day)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Day field.', Comment = '%';
                }
                field("Time Slot"; Rec."Time Slot")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Time Slot field.', Comment = '%';
                }
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        TimetableRec: Record "Timetable";
    begin

        TimetableRec.Reset();
        TimetableRec.SetRange("TeacherID");
        TimetableRec.SetRange("Day");
        TimetableRec.SetRange("Start Time");
        if TimetableRec.FindFirst() then
            Error('Teacher %1 is already assigned at this time slot.');


        TimetableRec.Reset();
        TimetableRec.SetRange("ClassID");
        TimetableRec.SetRange("Day");
        TimetableRec.SetRange("Start Time");
        TimetableRec.SetRange("End Time");

        if TimetableRec.FindFirst() then
            Error('Class %1 already has a subject scheduled at this time.');
    end;

}
