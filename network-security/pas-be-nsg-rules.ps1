### To login to Azure Resource Manager
Login-AzureRmAccount

### To select a default subscription for your current session
Get-AzureRmSubscription –SubscriptionName “AdminPlatformCloud” | Select-AzureRmSubscription

### NSG BE Rules - 10/27/2016

$rule100 = New-AzureRmNetworkSecurityRuleConfig -Name allowSQL-FE -Description "Allow SQL" -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix 10.248.248.0/22 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 1433

$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName rg-eu2-pas-d01 -Location eastus2 -Name "nsg-eu2-be-pas-d01" -SecurityRules $rule100

