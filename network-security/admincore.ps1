### To login to Azure Resource Manager
Login-AzureRmAccount

### To select a default subscription for your current session
Get-AzureRmSubscription –SubscriptionName “AdminPlatformCloud” | Select-AzureRmSubscription

### NSG Core Rules - 10/27/2016

$rule100 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-home -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix 1.2.3.4 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22

$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName rg-eu2-admincore-p01 -Location eastus2 -Name "nsg-eu2-admincore-p01" -SecurityRules $rule100,
