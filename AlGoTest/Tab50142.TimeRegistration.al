table 50142 "Time Registration"
{
    Caption = 'Time Registration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration No."; Code[20])
        {
            Caption = 'Registration No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Employee No."; Code[20])
        {
            TableRelation = Employee."No.";
            Caption = 'Employee No.';
            DataClassification = ToBeClassified;
        }
        field(3; "Hours Registered"; Integer)
        {
            Caption = 'Hours Registered';
            DataClassification = ToBeClassified;
        }
        field(4; "Project No."; Code[20])
        {
            TableRelation = Project."Project No.";
            Caption = 'Project No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Registration No.")
        {
            Clustered = true;
        }
    }
}
