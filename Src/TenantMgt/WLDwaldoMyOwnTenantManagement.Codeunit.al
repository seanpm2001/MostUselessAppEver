codeunit 50130 "WLD waldoMyOwnTenantManagement"
{
    //[EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure ShowTenantInformation()
    begin
        DoShowTenantInformation();
    end;

    local procedure DoShowTenantInformation()
    var
        AzureADTenant: codeunit "Azure AD Tenant";
        EnvironmentInformation: Codeunit "Environment Information";
        ApplicationSystemConstants: Codeunit "Application System Constants";

        PermissionManager: codeunit "Permission Manager";
        CompleteMessage: TextBuilder;
    begin

        CompleteMessage.Clear();
        //CompleteMessage.AppendLine(StrSubstNo('GetAadTenantDomainName - %1', TenantMgt.GetAadTenantDomainName()));
        CompleteMessage.AppendLine(StrSubstNo('GetAadTenantId - %1', AzureADTenant.GetAadTenantId()));
        CompleteMessage.AppendLine(StrSubstNo('GetApplicationFamily - %1', EnvironmentInformation.GetApplicationFamily()));
        CompleteMessage.AppendLine(StrSubstNo('GetApplicationVersion - %1', ApplicationSystemConstants.ApplicationVersion()));
        CompleteMessage.AppendLine(StrSubstNo('GetEnvironmentName - %1', EnvironmentInformation.GetEnvironmentName()));
        CompleteMessage.AppendLine(StrSubstNo('PlatformFileVersion - %1', ApplicationSystemConstants.PlatformFileVersion()));
        CompleteMessage.AppendLine(StrSubstNo('PlatformProductVersion - %1', ApplicationSystemConstants.PlatformProductVersion()));
        //CompleteMessage.AppendLine(StrSubstNo('GetTenantDisplayName - %1', EnvironmentInformation.GetTenantDisplayName()));

        CompleteMessage.AppendLine(StrSubstNo('GetTenantId - %1', TenantId()));
        CompleteMessage.AppendLine(StrSubstNo('IsProduction - %1', EnvironmentInformation.IsProduction()));
        CompleteMessage.AppendLine(StrSubstNo('IsSandbox - %1', EnvironmentInformation.IsSandbox()));
        CompleteMessage.AppendLine(StrSubstNo('IsOnprem - %1', EnvironmentInformation.IsOnPrem()));
        CompleteMessage.AppendLine(StrSubstNo('IsSaaS - %1', EnvironmentInformation.IsSaaS()));
        CompleteMessage.AppendLine(StrSubstNo('IsFinancials - %1', EnvironmentInformation.IsFinancials()));


        CompleteMessage.AppendLine(StrSubstNo('Is Intelligent Cloud - %1', PermissionManager.IsIntelligentCloud()));

        Message(CompleteMessage.ToText());
    end;

}