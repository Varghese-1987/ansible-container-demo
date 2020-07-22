param(
    [Parameter(Mandatory = $true)]
    [string]$ServicePrincipalAppId,
    [Parameter(Mandatory = $true)]
    [string]$ServicePassword,
    [Parameter(Mandatory = $true)]
    [string]$TenantId,
    [Parameter(Mandatory = $true)]
    [string]$ResourceGroupName,
    [Parameter(Mandatory = $true)]
    [string]$AksClusterName
)


az login --service-principal --username $ServicePrincipalAppId --password $ServicePassword --tenant $TenantId
az aks get-credentials -g $ResourceGroupName -n $AksClusterName --file kubeconfig.config --overwrite-existing
docker-compose.exe -f docker-compose.yaml up