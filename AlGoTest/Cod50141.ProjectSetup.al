codeunit 50141 "Project Setup"
{
    trigger OnRun()
    begin

    end;

    procedure InitSetup()
    var
        ProjectSetup: Record "Project Setup";

    begin

        /*if ProjectSetup.Get() then begin
            Message('Project Setup already initialized');
        end;*/

        ProjectSetup.Init();

        ProjectSetup."Project Nos." := 'PRJ';

        if ProjectSetup.Insert() then
            Message('Project Setup done.');
    end;

}
