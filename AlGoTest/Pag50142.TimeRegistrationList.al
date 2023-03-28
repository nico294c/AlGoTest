page 50142 TimeRegistrationList
{
    ApplicationArea = All;
    Caption = 'TimeRegistrationList';
    PageType = List;
    SourceTable = "Time Registration";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Employee No."; Rec."Employee No.")
                {
                    ToolTip = 'Specifies the value of the Employee No. field.';
                }
                field("Hours Registered"; Rec."Hours Registered")
                {
                    ToolTip = 'Specifies the value of the Hours Registered field.';
                }
                field("Project No."; Rec."Project No.")
                {
                    ToolTip = 'Specifies the value of the Project No. field.';
                }
                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Registration No. field.';
                }
            }
        }
    }
}
