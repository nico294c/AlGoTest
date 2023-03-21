table 50141 "Posted Project"
{
    Caption = 'Posted Project';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project No."; Code[20])
        {
            TableRelation = Project."Project No.";
            Caption = 'Project No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Project Name"; Text[40])
        {
            Caption = 'Project Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Estimated Hours"; Integer)
        {
            Caption = 'Estimated Hours';
            DataClassification = ToBeClassified;
        }
        field(4; "Used Hours"; Integer)
        {
            Caption = 'Used Hours';
            DataClassification = ToBeClassified;
        }
        field(5; "Project Group No."; Code[20])
        {
            TableRelation = "Project Group"."Project Group No.";
            Caption = 'Project Group No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Project No.")
        {
            Clustered = true;
        }
    }
}
