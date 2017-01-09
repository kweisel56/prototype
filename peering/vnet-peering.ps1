###Get VNet Names
$vnet1 = Get-AzureRmVirtualNetwork -ResourceGroupName rg-eu2-admincore-p01 -Name vnet-eu2-admincore-p01
$vnet2 = Get-AzureRmVirtualNetwork -ResourceGroupName rg-eu2-pas-d01 -Name vnet-eu2-pas-d01

### Add VNet Peer to AdminCore
Add-AzureRmVirtualNetworkingPeeering -Name admincore-pasd01 -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet2.Id

### Add VNet Peer to pasd01
Add-AzureRmVirtualNetworkingPeeering -Name pasd01-admincore -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet1.Id
