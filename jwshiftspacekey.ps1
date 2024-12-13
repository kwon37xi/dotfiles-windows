$utilDir = "C:\Utilities"
$zipFile = "$ENV:TEMP\jwshiftspacekey.7z"

if (-Not (Test-Path $utilDir)) {
    New-Item -ItemType Directory -Path $utilDir | Out-Null
}

Invoke-WebRequest -Uri "https://kwonnam.pe.kr/wiki/_media/jwshiftspacekey-only-han-eng.7z" -OutFile $zipFile

& "C:\Program Files\7-Zip\7z" x $zipFile -o"$utilDir"
Remove-Item -Path $zipFile -Force

New-Item -ItemType SymbolicLink -Path "$ENV:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\jwShiftSpaceKey.exe" -Target "$utilDir\jwShiftSpaceKey.exe"
