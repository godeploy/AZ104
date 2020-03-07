$location = 'eastus'

$rgName = 'az104-11-rg0'

New-AzResourceGroup -Name $rgName -Location $location

sleep 5

# This cant be put in a normal foreach becuase is messes with the way -namesuffix is populated 
# in the ARM template by
# the New-AzresourceGroupDeployment command


New-AzResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile $pwd/az104-11-vm-template.json -TemplateParameterFile $pwd/az104-11-vm-parameters.json -AsJob


Get-Job | select Name, Command

Write-Host "Deploying resources to 'az104-11-rg0'"
Write-Host "The deployment of the resources may take 5-15 minutes you can check the status of the deployment in the Azure Portal."