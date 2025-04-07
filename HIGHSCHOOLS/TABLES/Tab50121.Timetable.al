table 50121 Timetable
{
    Caption = 'Timetable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; TimetableID; Integer)
        {
            Caption = 'TimetableID';
        }
        field(2; SubjectID; Integer)
        {
            Caption = 'SubjectID';
        }
        field(3; TeacherID; Integer)
        {
            Caption = 'TeacherID';
        }
        field(4; ClassID; Integer)
        {
            Caption = 'ClassID';
        }
        field(5; Day; Option)
        {
            OptionMembers = Monday,Tuesday,Wednesday,Thursday,Friday;
            OptionCaption = 'Monday,Tuesday,Wednesday,Thursday,Friday';
        }
        field(6; "Start Time"; Time)
        {
            Caption = 'Start Time';
        }
        field(7; "End Time"; Time)
        {
            Caption = 'End Time';
        }
    }
    keys
    {
        key(PK; TimetableID)
        {
            Clustered = true;
        }
    }
}
