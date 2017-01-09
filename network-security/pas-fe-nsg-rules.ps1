### To login to Azure Resource Manager
Login-AzureRmAccount

### To select a default subscription for your current session
Get-AzureRmSubscription –SubscriptionName “AdminPlatformCloud” | Select-AzureRmSubscription

### NSG FE Rules - 10/27/2016
$rule101 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-AdminCore -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 101 -SourceAddressPrefix 10.248.255.0/26 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule110 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-Mahape -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 110 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule111 = New-AzureRmNetworkSecurityRuleConfig -Name allowHTTP-Mahape -Description "Allow HTTP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 111 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 80
$rule112 = New-AzureRmNetworkSecurityRuleConfig -Name allowHTTPS-Mahape -Description "Allow HTTPS" -Access Allow -Protocol Tcp -Direction Inbound -Priority 112 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 443
$rule113 = New-AzureRmNetworkSecurityRuleConfig -Name allow8080-Mahape -Description "Allow 8080" -Access Allow -Protocol Tcp -Direction Inbound -Priority 113 -SourceAddressPrefix 115.113.120.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 8080
$rule120 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-Pune -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 120 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule121 = New-AzureRmNetworkSecurityRuleConfig -Name allowHTTP-Pune -Description "Allow HTTP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 121 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 80
$rule122 = New-AzureRmNetworkSecurityRuleConfig -Name allowHTTPS-Pune -Description "Allow HTTPS" -Access Allow -Protocol Tcp -Direction Inbound -Priority 122 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 443
$rule123 = New-AzureRmNetworkSecurityRuleConfig -Name allow8080-Pune -Description "Allow 8080" -Access Allow -Protocol Tcp -Direction Inbound -Priority 123 -SourceAddressPrefix 59.160.71.0/25 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 8080
$rule130 = New-AzureRmNetworkSecurityRuleConfig -Name allowSSH-Galstonbury -Description "Allow SSH" -Access Allow -Protocol Tcp -Direction Inbound -Priority 130 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 22
$rule131 = New-AzureRmNetworkSecurityRuleConfig -Name allowHTTP-Galstonbury -Description "Allow HTTP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 131 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 80
$rule132 = New-AzureRmNetworkSecurityRuleConfig -Name allowHTTPS-Galstonbury -Description "Allow HTTPS" -Access Allow -Protocol Tcp -Direction Inbound -Priority 132 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 443
$rule133 = New-AzureRmNetworkSecurityRuleConfig -Name allow8080-Galstonbury -Description "Allow 8080" -Access Allow -Protocol Tcp -Direction Inbound -Priority 133 -SourceAddressPrefix 208.69.87.146 -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 8080

$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName rg-eu2-pas-d01 -Location eastus2 -Name "nsg-eu2-fe-pas-d01" -SecurityRules $rule101,$rule110,$rule111,$rule112,$rule113,$rule120,$rule121,$rule122,$rule123,$rule130,$rule131,$rule132,$rule133
