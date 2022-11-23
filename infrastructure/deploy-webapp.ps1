$studentprefix = "799772"
$githubAccount = "eddyv73"
$resourcegroupName = "fabmedical-rg-" + $studentprefix
$webappName = "fabmedical-web-" + $studentprefix

# Deploy Azure Web App
az webapp config container set `
    --docker-registry-server-password $env:CR_PAT"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" `
    --docker-registry-server-url https://ghcr.io `
    --docker-registry-server-user $githubAccount `
    --multicontainer-config-file ./../docker-compose.yml `
    --multicontainer-config-type COMPOSE `
    --name $webappName `
    --resource-group $resourcegroupName
