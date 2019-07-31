#Set-ClusterQuorum -NodeAndFileShareMajority \\WITHAMCLUSTER2\Witness2 test#
Set-Location -Path HKCU:\
$path = 'filesystem::\\WITHAMCLUSTER2\Witness'
$cluster = get-clusterresource -cluster ClusterTest | where-object {$_.name -like "*File Share*"} | Get-ClusterParameter
$Revert = $cluster.value.contains("\\WITHAMCLUSTER2\Witness2")

$FilePathTrue = Test-Path -Path $path
if ($FilePathTrue -ne $True) {
Set-ClusterQuorum -NodeMajority
Set-ClusterQuorum -NodeAndFileShareMajority \\WITHAMCLUSTER2\Witness2}
    elseif ($Revert -eq "True") {
    ipconfig
Set-ClusterQuorum -NodeMajority
Set-ClusterQuorum -NodeAndFileShareMajority \\WITHAMCLUSTER2\Witness
}
