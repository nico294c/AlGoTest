table 50140 Project
{
    Caption = 'Project';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project No."; Code[20])
        {
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
        field(6; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Project No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        ProjectSetup: Record "Project Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "Project No." = '' then begin
            ProjectSetup.Get();
            ProjectSetup.TestField("Project Nos.");
            NoSeriesMgt.InitSeries(ProjectSetup."Project Nos.", xRec."No. Series", 0D, "Project No.", "No. Series");
        end;

    end;
}
