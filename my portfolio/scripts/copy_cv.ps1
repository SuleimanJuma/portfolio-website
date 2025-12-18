# PowerShell script to copy the latest CV into the project Images folder
# Usage: Right-click and Run with PowerShell, or run in terminal
$source = "C:\Users\Suleiman\Downloads\Suleiman_Juma_Cyber_Cloud_CV_Enhanced.pdf"
$destDir = "C:\Users\Suleiman\portfolio-website\my portfolio\Images"
if (-Not (Test-Path $source)) {
  Write-Error "Source file not found: $source"
  exit 1
}
if (-Not (Test-Path $destDir)) {
  New-Item -ItemType Directory -Path $destDir -Force | Out-Null
}
$dest = Join-Path $destDir (Split-Path $source -Leaf)
Copy-Item -Path $source -Destination $dest -Force
Write-Output "Copied to: $dest"
Test-Path $dest | Write-Output
