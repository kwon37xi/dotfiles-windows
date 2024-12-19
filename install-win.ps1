# MS Windows 애플리케이션 설치와 설정을 자동화한다.
# PowerShell 을 관리자 권한으로 실행해야 한다.


Write-Output "Windows 초기 애플리케이션 설치 자동화를 시작합니다."
Pause

# sudo 를 위해 먼저 gsudo 설치
winget install gerardog.gsudo


Set-Alias -name gsudo -value "C:\Program Files\gsudo\Current\gsudo.exe"
Set-Alias -name git -value "C:\Program Files\Git\cmd\git.exe"

# dotfiles-windows clone

gsudo --keepWindow winget install Git.Git --silent --accept-package-agreements --accept-source-agreements

# clone .dotfiles-windows
if (Test-Path -Path "$HOME\.dotfiles-windows") {
	Remove-Item -Path "$HOME\.dotfiles-windows" -Recurse -Force
}
git clone https://github.com/kwon37xi/dotfiles-windows.git $HOME\.dotfiles-windows


# winget 기본 애플리케이션의 설치
gsudo --keepWindow winget import -i $HOME\.dotfiles-windows\winget_apps.json --disable-interactivity --accept-package-agreements --accept-source-agreements

# choco 기본 애플리케이션 설치
$chocopackages = @(
    "d2codingfont",
    "nerd-fonts-CascadiaCode",
    "nerd-fonts-CascadiaMono",
    "nerd-fonts-D2Coding",
    "nerd-fonts-JetBrainsMono",
    "nanumfont",
    "nanum-gothic-coding-font",
    "adobe-source-sans",
    "adobe-source-serif",
    "font-awesome-font"
)
foreach ($package in $chocopackages) {
    gsudo --keepWindow C:\ProgramData\chocolatey\bin\choco.exe install $package -y --allow-empty-checksums
}

# Windows 설정들
& $HOME\.dotfiles-windows\windows-configurations.ps1
& $HOME\.dotfiles-windows\hangul-sebul390.ps1
& $HOME\.dotfiles-windows\jwshiftspacekey.ps1

# TODOs
# dotfiles
# windows terminal font 설정
# PowerToys Run 등 설정
#

# WSL Install
gsudo --keepWindow wsl --install -d Ubuntu
# Reboot 필요
