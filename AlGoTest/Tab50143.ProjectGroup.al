table 50143 "Project Group"
{
    Caption = 'Project Group';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project Group No."; Integer)
        {
            Caption = 'Project Group No.';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Group Name"; Text[30])
        {
            Caption = 'Project group name';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Project Group No.")
        {
            Clustered = true;
        }
    }
}
