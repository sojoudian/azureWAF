# Define the path to your project's directory
$projectPath = "CountriesApp"

# Define the name of your Publish Profile file
$publishProfilePath = "wafdemo20240311.PublishSettings"

# Optionally, clean and build the project in Release configuration
dotnet clean $projectPath --configuration Release
dotnet build $projectPath --configuration Release

# Publish the project using the Publish Profile
dotnet publish $projectPath --configuration Release /p:PublishProfile=$publishProfilePath /p:Password=YourPasswordHere

# Note: Replace "YourPasswordHere" with the actual password for the Publish Profile, if required.
# It's generally recommended to use secure ways to handle passwords and not hard-code them in scripts.
