$resourcegroupname = "sysnzsp"
$deploymentname = "sysnzsp-deploy-dc"

Login-AzureRmAccount
Get-AzureRmSubscription -SubscriptionName "Visual Studio Enterprise with MSDN" | Select-AzureRmSubscription

$resourcegroup = Get-AzureRmResourceGroup -Location "Australia East" -Name $resourcegroupname

New-AzureRmResourceGroupDeployment -Name $deploymentname -ResourceGroupName $resourcegroupname -TemplateUri 'C:\GitHub\azure-resources\Templates\SharePointFarm\dc.json'
