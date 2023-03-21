pageextension 50140 EmployeeCardExt extends "Employee Card"
{
    layout
    {
        addafter(Payments)
        {
            group("Project Group")
            {
                field("Assign Project Group"; "Project Group")
                {

                }
            }
        }
    }
}
