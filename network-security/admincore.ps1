### To login to Azure Resource Manager
Login-AzureRmAccount

### To select a default subscription for your current session
Get-AzureRmSubscription –SubscriptionName “AdminPlatformCloud” | Select-AzureRmSubscription

### NSG Core Rules - 10/27/2016

$rule100 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-home -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix 66.18.44.246 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule101 = New-AzureRmNetworkSecurityRuleConfig -Name allow80xx-home -Description "Allow 80xx" -Access Allow -Protocol Tcp -Direction Inbound -Priority 101 -SourceAddressPrefix 66.18.44.246 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 8080-8081
$rule102 = New-AzureRmNetworkSecurityRuleConfig -Name allowLDAP-home -Description "Allow LDAP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 102 -SourceAddressPrefix 66.18.44.246 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 389
$rule110 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-Mahape -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 110 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule111 = New-AzureRmNetworkSecurityRuleConfig -Name allow80xx-Mahape -Description "Allow 80xx" -Access Allow -Protocol Tcp -Direction Inbound -Priority 111 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 8080-8081
$rule112 = New-AzureRmNetworkSecurityRuleConfig -Name allowLDAP-Mahape -Description "Allow LDAP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 112 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 389
$rule120 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-Pune -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 120 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule121 = New-AzureRmNetworkSecurityRuleConfig -Name allow80xx-Pune -Description "Allow 80xx" -Access Allow -Protocol Tcp -Direction Inbound -Priority 121 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 8080-8081
$rule122 = New-AzureRmNetworkSecurityRuleConfig -Name allowLDAP-Pune -Description "Allow LDAP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 122 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 389
$rule130 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-Galstonbury -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 130 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule131 = New-AzureRmNetworkSecurityRuleConfig -Name allow80xx-Galstonbury -Description "Allow 80xx" -Access Allow -Protocol Tcp -Direction Inbound -Priority 131 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 8080-8081
$rule132 = New-AzureRmNetworkSecurityRuleConfig -Name allowLDAP-Galstonbury -Description "Allow LDAP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 132 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 389
$rule140 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-FE -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 140 -SourceAddressPrefix 10.248.248.0/22 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule141 = New-AzureRmNetworkSecurityRuleConfig -Name allowLDAP-FE -Description "Allow LDAP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 141 -SourceAddressPrefix 10.248.248.0/22 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 389

$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName rg-eu2-admincore-p01 -Location eastus2 -Name "nsg-eu2-admincore-p01" -SecurityRules $rule100,$rule101,$rule102,$rule110,$rule111,$rule112,$rule120,$rule121,$rule122,$rule130,$rule131,$rule132,$rule140,$rule141
