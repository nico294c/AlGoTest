page 50140 ProjectList
{
    ApplicationArea = All;
    Caption = 'Project List';
    PageType = List;
    SourceTable = Project;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Estimated Hours"; Rec."Estimated Hours")
                {
                    ToolTip = 'Estimated hours for the specificed project.';
                }
                field("Project Group No."; Rec."Project Group No.")
                {
                    Caption = 'Project group number';
                    ToolTip = 'The group number for the assigned project group.';
                }
                field("Project Name"; Rec."Project Name")
                {
                    ToolTip = 'The name of the project.';
                }
                field("Project No."; Rec."Project No.")
                {
                    Caption = 'Project number';
                    ToolTip = 'The project number of the specified project.';
                }
                field("Used Hours"; Rec."Used Hours")
                {
                    ToolTip = 'The amount of currently used hours.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Project Setup")
            {
                trigger OnAction();
                var
                    projectSetup: Codeunit "Project Setup";

                begin
                    projectSetup.InitSetup();
                end;
            }
        }
    }
}
