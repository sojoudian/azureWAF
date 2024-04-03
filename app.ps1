# Variables
$loc = 'eastus'
$grp = 'AppgwWAF'
$pln = 'plan-sea'
$appname = 'wafdemo20240311'

# Create Resource Group
az group create --name $grp --location $loc

# Create App Service Plan
az appservice plan create --name $pln --resource-group $grp --location $loc --sku S1

# Create Web App
# If you need to specify a runtime, adjust the command accordingly
az webapp create --name $appname --plan $pln --resource-group $grp --runtime "DOTNET|6.0"