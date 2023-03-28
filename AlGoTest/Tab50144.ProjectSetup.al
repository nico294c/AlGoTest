table 50144 "Project Setup"
{
    Caption = 'Project Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; "Project Nos."; Code[20])
        {
            Caption = 'Project Nos';
            TableRelation = "No. Series";
            DataClassification = AccountData;
        }
    }
    keys
    {
        key("Primary Key"; "Primary Key")
        {
            Clustered = true;
        }
    }

    trigger OnModify()
    begin

    end;
}
