# MS Windows 애플리케이션 설치와 설정을 자동화한다.
# PowerShell 을 관리자 권한으로 실행해야 한다.


Write-Output "Windows 초기 애플리케이션 설치 자동화를 시작합니다."
Pause

# dotfiles-windows clone
winget install Git.Git --silent --accept-package-agreements --accept-source-agreements

if (Test-Path -Path "$HOME\.dotfiles-windows") {
	Remove-Item -Path "$HOME\.dotfiles-windows" -Recurse -Force
}

Set-Alias -name git -value "C:\Program Files\Git\cmd\git.exe"
git clone https://github.com/kwon37xi/dotfiles-windows.git $HOME\.dotfiles-windows


# 기본 애플리케이션의 설치
winget import -i $HOME\.dotfiles-windows\winget_apps.json --silent --accept-package-agreements --accept-source-agreements


# 각종 기본 설정파일들 설정
