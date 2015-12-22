$resourcegroupname = "sysnzsp"
$deploymentname = "sysnzsp-deploy-dc"

Login-AzureRmAccount
Get-AzureRmSubscription -SubscriptionName "Visual Studio Enterprise with MSDN" | Select-AzureRmSubscription

$resourcegroup = Get-AzureRmResourceGroup -Location "Australia East" -Name $resourcegroupname

New-AzureRmResourceGroupDeployment -Name $deploymentname -ResourceGroupName $resourcegroupname -TemplateUri 'https://raw.githubusercontent.com/beavisnz/azure-resources/master/Templates/SharePointFarm/dc.json'
