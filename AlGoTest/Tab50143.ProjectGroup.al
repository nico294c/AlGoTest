table 50143 "Project Group"
{
    Caption = 'Project Group';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project Group No."; Code[20])
        {
            Caption = 'Project Group No.';
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
