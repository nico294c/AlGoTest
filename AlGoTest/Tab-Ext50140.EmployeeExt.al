tableextension 50140 EmployeeExt extends Employee
{
    fields
    {
        field(50140; "Project Group"; Code[20])
        {
            TableRelation = "Project Group"."Project Group No.";
            DataClassification = ToBeClassified;
        }
    }
}
