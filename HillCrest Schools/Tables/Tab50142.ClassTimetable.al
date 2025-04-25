table 50142 "Class Timetable"
{
    Caption = 'Class Timetable';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Timetable ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(2; "Class ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Class"."Class ID";
        }

        field(3; "Subject ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "AllSubjects".SubjectID;
        }

        field(4; "Teacher ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "School Teachers"."Teacher ID";
        }

        field(5; "Day"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday;
            OptionCaption = 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday';
        }

        field(6; "Time Slot"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Timetable ID")
        {
            Clustered = true;
        }

        key(ClassDayTime; "Class ID", "Day", "Time Slot") { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Timetable ID", "Class ID", "Subject ID", "Teacher ID") { }
    }
}
