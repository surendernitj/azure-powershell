#  
# Module manifest for module 'AzureRM'  
#  
# Generated by: Microsoft Corporation  
#  
# Generated on: 05/01/2018 17:34:36
#  

$PSDefaultParameterValues.Clear()
Set-StrictMode -Version Latest

Import-Module AzureRM.Profile -RequiredVersion 4.6.0 -Global
Import-Module Azure.Storage -RequiredVersion 4.2.1 -Global
Import-Module AzureRM.AnalysisServices -RequiredVersion 0.6.6 -Global
Import-Module Azure.AnalysisServices -RequiredVersion 0.5.0 -Global
Import-Module AzureRM.ApiManagement -RequiredVersion 5.1.2 -Global
Import-Module AzureRM.ApplicationInsights -RequiredVersion 0.1.3 -Global
Import-Module AzureRM.Automation -RequiredVersion 4.3.2 -Global
Import-Module AzureRM.Backup -RequiredVersion 4.0.4 -Global
Import-Module AzureRM.Batch -RequiredVersion 4.0.6 -Global
Import-Module AzureRM.Billing -RequiredVersion 0.14.1 -Global
Import-Module AzureRM.Cdn -RequiredVersion 4.2.2 -Global
Import-Module AzureRM.CognitiveServices -RequiredVersion 0.9.4 -Global
Import-Module AzureRM.Compute -RequiredVersion 4.6.0 -Global
Import-Module AzureRM.Consumption -RequiredVersion 0.3.1 -Global
Import-Module AzureRM.ContainerInstance -RequiredVersion 0.2.5 -Global
Import-Module AzureRM.ContainerRegistry -RequiredVersion 1.0.4 -Global
Import-Module AzureRM.DataFactories -RequiredVersion 4.2.2 -Global
Import-Module AzureRM.DataFactoryV2 -RequiredVersion 0.5.3 -Global
Import-Module AzureRM.DataLakeAnalytics -RequiredVersion 4.2.3 -Global
Import-Module AzureRM.DataLakeStore -RequiredVersion 5.2.0 -Global
Import-Module AzureRM.DevTestLabs -RequiredVersion 4.0.4 -Global
Import-Module AzureRM.Dns -RequiredVersion 4.1.2 -Global
Import-Module AzureRM.EventGrid -RequiredVersion 0.3.2 -Global
Import-Module AzureRM.EventHub -RequiredVersion 0.6.3 -Global
Import-Module AzureRM.HDInsight -RequiredVersion 4.1.2 -Global
Import-Module AzureRM.Insights -RequiredVersion 4.0.4 -Global
Import-Module AzureRM.IotHub -RequiredVersion 3.1.2 -Global
Import-Module AzureRM.KeyVault -RequiredVersion 4.3.0 -Global
Import-Module AzureRM.LogicApp -RequiredVersion 4.0.3 -Global
Import-Module AzureRM.MachineLearning -RequiredVersion 0.17.2 -Global
Import-Module AzureRM.MachineLearningCompute -RequiredVersion 0.4.2 -Global
Import-Module AzureRM.MarketplaceOrdering -RequiredVersion 0.2.1 -Global
Import-Module AzureRM.Media -RequiredVersion 0.9.2 -Global
Import-Module AzureRM.Network -RequiredVersion 5.4.2 -Global
Import-Module AzureRM.NotificationHubs -RequiredVersion 4.1.1 -Global
Import-Module AzureRM.OperationalInsights -RequiredVersion 4.3.2 -Global
Import-Module AzureRM.PowerBIEmbedded -RequiredVersion 4.1.4 -Global
Import-Module AzureRM.RecoveryServices -RequiredVersion 4.1.2 -Global
Import-Module AzureRM.RecoveryServices.Backup -RequiredVersion 4.1.2 -Global
Import-Module AzureRM.RecoveryServices.SiteRecovery -RequiredVersion 0.2.4 -Global
Import-Module AzureRM.RedisCache -RequiredVersion 4.1.2 -Global
Import-Module AzureRM.Relay -RequiredVersion 0.3.3 -Global
Import-Module AzureRM.Resources -RequiredVersion 5.5.2 -Global
Import-Module AzureRM.Scheduler -RequiredVersion 0.16.3 -Global
Import-Module AzureRM.ServiceBus -RequiredVersion 0.6.4 -Global
Import-Module AzureRM.ServiceFabric -RequiredVersion 0.3.4 -Global
Import-Module AzureRM.Sql -RequiredVersion 4.4.0 -Global
Import-Module AzureRM.Storage -RequiredVersion 4.2.3 -Global
Import-Module AzureRM.StreamAnalytics -RequiredVersion 4.0.4 -Global
Import-Module AzureRM.Tags -RequiredVersion 4.0.1 -Global
Import-Module AzureRM.TrafficManager -RequiredVersion 4.0.3 -Global
Import-Module AzureRM.UsageAggregates -RequiredVersion 4.0.2 -Global
Import-Module AzureRM.Websites -RequiredVersion 4.2.2 -Global


if (Test-Path -Path "$PSScriptRoot\StartupScripts")
{
    Get-ChildItem "$PSScriptRoot\StartupScripts" | ForEach-Object {
        . $_.FullName
    }
}

$FilteredCommands = @()

if ($Env:ACC_CLOUD -eq $null)
{
    $FilteredCommands | ForEach-Object {
        $global:PSDefaultParameterValues.Add($_,
            {
                $context = Get-AzureRmContext
                if (($context -ne $null) -and $context.ExtendedProperties.ContainsKey("Default Resource Group")) {
                    $context.ExtendedProperties["Default Resource Group"]
                } 
            })
    }
}
