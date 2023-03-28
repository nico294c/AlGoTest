page 50141 PostedProjectList
{
    ApplicationArea = All;
    Caption = 'PostedProjectList';
    PageType = List;
    SourceTable = "Posted Project";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Estimated Hours"; Rec."Estimated Hours")
                {
                    ToolTip = 'Specifies the value of the Estimated Hours field.';
                }
                field("Project Group No."; Rec."Project Group No.")
                {
                    ToolTip = 'Specifies the value of the Project Group No. field.';
                }
                field("Project Name"; Rec."Project Name")
                {
                    ToolTip = 'Specifies the value of the Project Name field.';
                }
                field("Project No."; Rec."Project No.")
                {
                    ToolTip = 'Specifies the value of the Project No. field.';
                }
                field("Used Hours"; Rec."Used Hours")
                {
                    ToolTip = 'Specifies the value of the Used Hours field.';
                }
            }
        }
    }
}
