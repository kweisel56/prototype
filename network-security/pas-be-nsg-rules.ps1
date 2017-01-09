### To login to Azure Resource Manager
Login-AzureRmAccount

### To select a default subscription for your current session
Get-AzureRmSubscription –SubscriptionName “AdminPlatformCloud” | Select-AzureRmSubscription

### NSG BE Rules - 10/27/2016

$rule100 = New-AzureRmNetworkSecurityRuleConfig -Name allowSQL-FE -Description "Allow SQL" -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix 10.248.248.0/22 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 1433
$rule110 = New-AzureRmNetworkSecurityRuleConfig -Name allowRDP-Mahape -Description "Allow RDP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 110 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
$rule111 = New-AzureRmNetworkSecurityRuleConfig -Name allowSQL-Mahape -Description "Allow SQL" -Access Allow -Protocol Tcp -Direction Inbound -Priority 111 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 1433
$rule120 = New-AzureRmNetworkSecurityRuleConfig -Name allowRDP-Pune -Description "Allow RDP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 120 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
$rule121 = New-AzureRmNetworkSecurityRuleConfig -Name allowSQL-Pune -Description "Allow SQL" -Access Allow -Protocol Tcp -Direction Inbound -Priority 121 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 1433
$rule130 = New-AzureRmNetworkSecurityRuleConfig -Name allowRDP-Galstonbury -Description "Allow RDP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 130 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
$rule131 = New-AzureRmNetworkSecurityRuleConfig -Name allowSQL-Galstonbury -Description "Allow SQL" -Access Allow -Protocol Tcp -Direction Inbound -Priority 131 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 1433
$rule132 = New-AzureRmNetworkSecurityRuleConfig -Name allowWinRM-Galstonbury -Description "Allow WinRM" -Access Allow -Protocol Tcp -Direction Inbound -Priority 132 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 5986
$rule140 = New-AzureRmNetworkSecurityRuleConfig -Name allowRDP-home -Description "Allow RDP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 140 -SourceAddressPrefix 66.18.44.246 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
$rule141 = New-AzureRmNetworkSecurityRuleConfig -Name allowSQL-home -Description "Allow SQL" -Access Allow -Protocol Tcp -Direction Inbound -Priority 141 -SourceAddressPrefix 66.18.44.246 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 1433
$rule160 = New-AzureRmNetworkSecurityRuleConfig -Name allowSQL-Core -Description "Allow SQL" -Access Allow -Protocol Tcp -Direction Inbound -Priority 160 -SourceAddressPrefix 10.248.255.0/26 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 1433
$rule161 = New-AzureRmNetworkSecurityRuleConfig -Name allowWinRM-Core -Description "Allow WinRM" -Access Allow -Protocol Tcp -Direction Inbound -Priority 161 -SourceAddressPrefix 10.248.255.0/26 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 5986

$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName rg-eu2-pas-d01 -Location eastus2 -Name "nsg-eu2-be-pas-d01" -SecurityRules $rule100,$rule110,$rule111,$rule120,$rule121,$rule130,$rule131,$rule132,$rule140,$rule141,$rule160,$rule161

