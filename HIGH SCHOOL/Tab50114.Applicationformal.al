table 50114 "Application form.al"
{
    Caption = 'Application form.al';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application Number"; Code[50])
        {
            Caption = 'Application Number';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Age; Integer)
        {
            Caption = 'Age';
        }
        field(4; Gender; Option)
        {
            OptionMembers = Male,Female;
            OptionCaption = 'Male,Female';
        }
        field(5; "Date of Birth"; Code[50])
        {
            Caption = 'Date of Birth';
        }
        field(6; "Student's passport photo"; MediaSet)
        {
            Caption = 'Student''s passport photo';
        }
        field(7; Religion; Text[50])
        {
            Caption = 'Religion';
        }
        field(8; "Home Address"; Code[100])
        {
            Caption = 'Home Address';
        }
        field(9; "Email Address"; Code[100])
        {
            Caption = 'Email Address';
        }
        field(10; "Phone Number"; Code[20])
        {
            Caption = 'Phone Number';
        }
        field(11; "Parent/Guardian Name"; Text[50])
        {
            Caption = 'Parent/Guardian Name';
        }
        field(12; "Parent/Guardian ContactInfo"; Code[50])
        {
            Caption = 'Parent/Guardian Contact Information';
        }
        field(13; "Previous School Name"; Code[50])
        {
            Caption = 'Previous School Name';
        }
        field(14; "Previous School Address"; Code[100])
        {
            Caption = 'Previous School Address';
        }
        field(15; "Grade/Marks Scored"; Code[50])
        {
            Caption = 'Grade/Marks Scored';
        }
        field(16; "Copy of Certificate"; MediaSet)
        {
            Caption = 'Copy of Certificate';
        }
        field(17; Form; Integer)
        {
            Caption = 'Form';
        }
        field(18; Stream; Option)
        {
            OptionMembers = East,West,Central,North,South;
            OptionCaption = 'East,West,Central,North,South';
        }
        field(19; "Medical Conditions"; Text[200])
        {
            Caption = 'Medical Conditions';
        }
        field(20; Disability; Option)
        {
            OptionMembers = Yes,No;
            OptionCaption = 'Yes,No';
        }
        field(21; "Emergency Contact person"; Text[50])
        {
            Caption = 'Emergency Contact person';
        }
        field(22; "EmergencyContactperson contact"; Code[50])
        {
            Caption = 'Emergency Contact person contacts';
        }
        field(23; "Sports intrested in"; Text[100])
        {
            Caption = 'Sports intrested in';
        }
        field(24; "Clubs And Societies"; Text[100])
        {
            Caption = 'Clubs And Societies';
        }
        field(25; "Consent of Admission"; Text[50])
        {
            Caption = 'Consent of Admission';
        }
        field(26; "School Rules Agreement"; Code[50])
        {
            Caption = 'School Rules Agreement';
        }
        field(27; "Parent/Guardian Signature"; Text[20])
        {
            Caption = 'Parent/Guardian Signature';
        }
        field(28; "Student Signature"; Text[20])
        {
            Caption = 'Student Signature';
        }
        field(29; "Date of Submission"; Date)
        {
            Caption = 'Date of Submission';
        }
        field(30; "ApplicationNumber"; Code[50])
        {
            Caption = 'Application Number';
        }
        field(31; "Date Received"; Date)
        {
            Caption = 'Date Received';
        }
        field(32; "Application Status"; Option)
        {
            OptionMembers = Pending,Accepted,Rejected;
            OptionCaption = 'Pending,Accepted,Rejected';
        }
    }
    keys
    {
        key(PK; "Application Number")
        {
            Clustered = true;
        }
    }
}