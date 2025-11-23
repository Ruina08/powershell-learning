Write-Host "File Auditor script started..."

$path = "C:\DevOps\powershell-learning"
$files = Get-ChildItem -Path $path

Write-Host "Found $($files.Count) files in folder:"
foreach ($file in $files) {
    Write-Host "- $($file.Name) ($([math]::Round($file.Length / 1KB, 2)) KB)"
}

Write-Host "Script finished."
