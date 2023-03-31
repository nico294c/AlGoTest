table 50142 "Time Registration"
{
    Caption = 'Time Registration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration No."; Integer)
        {
            Caption = 'Registration No.';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
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
        field(4; "Project Group"; Code[20])
        {

            TableRelation = "Project Group"."Project Group No.";
            Caption = 'Project Group';
        }
        field(5; "Project No."; Code[20])
        {
            TableRelation = Project."Project No." where("Project Group No." = field("Project Group"));
            Caption = 'Project No.';
        }

    }
    keys
    {
        key(PK; "Registration No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        ProjectRec: Record Project;
    begin
        if ProjectRec.Get(Rec."Project No.") then begin
            ProjectRec."Used Hours" := ProjectRec."Used Hours" + Rec."Hours Registered";
            ProjectRec.Modify(false);
        end;
    end;


    var
        EmployeeRec: Record Employee;
}
