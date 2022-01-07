codeunit 50101 "PTE Setup"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Company-Initialize", 'OnCompanyInitialize', '', false, false)]
    local procedure InitializeSetup()
    begin
        if not Setup.Get() then begin
            Setup.Init();
            Setup.Insert();
        end;
    end;

    var
        Setup: Record "PTE Setup";
        Salespst: Codeunit "Sales Post Invoice";
}