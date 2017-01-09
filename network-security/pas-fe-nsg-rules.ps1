### To login to Azure Resource Manager
Login-AzureRmAccount

### To select a default subscription for your current session
Get-AzureRmSubscription –SubscriptionName “AdminPlatformCloud” | Select-AzureRmSubscription

### NSG FE Rules - 10/27/2016
$rule100 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-AdminCore -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 101 -SourceAddressPrefix 10.248.255.0/26 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22

$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName rg-eu2-pas-d01 -Location eastus2 -Name "nsg-eu2-fe-pas-d01" -SecurityRules $rule100
