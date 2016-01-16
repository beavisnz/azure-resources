$resourcegroupname = "sysnzsp"
$deploymentname = "sysnzsp-deploy-base"

Login-AzureRmAccount
Get-AzureRmSubscription -SubscriptionName "Visual Studio Enterprise with MSDN" | Select-AzureRmSubscription

$resourcegroup = Get-AzureRmResourceGroup -Location "Australia East" -Name $resourcegroupname

if ( !$resourcegroup ) {
    New-AzureRmResourceGroup -Name $resourcegroupname -Location "Australia East"
}

New-AzureRmResourceGroupDeployment -Name $deploymentname -ResourceGroupName $resourcegroupname -TemplateUri 'C:\GitHub\azure-resources\Templates\SharePointFarm\base.json'
