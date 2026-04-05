$ErrorActionPreference = "Stop"

Write-Host "🚀 Installing Risto..." -ForegroundColor Cyan

# Current directory
$dir = Get-Location

# Download URL
$url = "https://github.com/infinityinquire/Risto/releases/download/python/Risto.zip"

$zipPath = "$dir\Risto.zip"

# Step 1: Download
Write-Host "📥 Downloading project..."
Invoke-WebRequest -Uri $url -OutFile $zipPath

# Step 2: Extract
Write-Host "📂 Extracting files..."
Expand-Archive -Path $zipPath -DestinationPath $dir -Force

# Step 3: Remove zip
Remove-Item $zipPath

Write-Host "✅ Done!"

Write-Host "‎ "
Write-Host "Run the following commands"
Write-Host "‎ "
Write-Host "cd Risto" -ForegroundColor Yellow
Write-Host "./run-risto-test for testing." -ForegroundColor Yellow
Write-Host "./run-risto-build for building." -ForegroundColor Yellow
