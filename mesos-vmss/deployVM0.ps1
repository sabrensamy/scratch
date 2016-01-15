$VerbosePreference="Continue"
$deployName="aaajmgmt0115a"
$RGName=$deployName
$locName="East Asia"
$templateFile= "mesos-cluster.json"
$templateParameterFile= "cluster.parameters.json"
New-AzureRmResourceGroup -Name $RGName -Location $locName -Force

New-AzureRmResourceGroupDeployment -Name $deployName -ResourceGroupName $RGName -TemplateParameterFile $templateParameterFile -TemplateFile $templateFile
