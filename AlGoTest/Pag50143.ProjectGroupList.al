page 50143 "Project Group List"
{
    ApplicationArea = All;
    Caption = 'Project Group List';
    PageType = List;
    SourceTable = "Project Group";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Project Group No."; Rec."Project Group No.")
                {
                    ToolTip = 'Specifies the value of the Project Group No. field.';
                }
                field("Group Name"; Rec."Group Name")
                {
                    ToolTip = 'Specifies the value of the Project group name field.';
                }
            }
        }
    }
}
