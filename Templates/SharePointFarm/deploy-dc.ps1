$resourcegroupname = "sysnzsp"
$deploymentname = "sysnzsp-deploy-dc"

Login-AzureRmAccount
Get-AzureRmSubscription -SubscriptionName "Visual Studio Enterprise with MSDN" | Select-AzureRmSubscription

$resourcegroup = Get-AzureRmResourceGroup -Location "Australia East" -Name $resourcegroupname

New-AzureRmResourceGroupDeployment -Name $deploymentname -ResourceGroupName $resourcegroupname -TemplateUri 'OneDrive - Sysdoc NZ\Azure\Templates\SharePointFarm\dc.json'
