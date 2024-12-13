$regPath = "HKCU:\SOFTWARE\Microsoft\IME\15.0\IMEKR"
$propertyName = "InputMethod"
$propertyValue = 1
$propertyType = "DWord"

if (-Not (Test-Path -Path $regPath)) {
    Write-Host "$regPath does not exist. creating the path..." -ForegroundColor Yellow
    New-Item -Path $regPath -Force | Out-Null
}

New-ItemProperty -Path $regPath -Name $propertyName -Value $propertyValue -PropertyType $propertyType -Force
Write-Host "hangule sebul390 registered: $regPath\\$propertyName = $propertyValue"