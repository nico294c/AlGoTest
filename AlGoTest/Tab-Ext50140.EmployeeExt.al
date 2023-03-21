tableextension 50140 EmployeeExt extends Employee
{
    fields
    {
        field(50140; "Project Group"; Option)
        {
            OptionMembers = "Project Group 1","Project Group 2","Project Group 3";
            DataClassification = ToBeClassified;
        }
    }
}
