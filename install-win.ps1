# MS Windows 애플리케이션 설치와 설정을 자동화한다.
# PowerShell 을 관리자 권한으로 실행해야 한다.


# dotfiles-windows clone
winget install Git.Git --silent --accept-package-agreements --accept-source-agreements

git clone https://github.com/kwon37xi/dotfiles-windows.git $HOME\.dotfiles-windows


# 기본 애플리케이션의 설치
winget -i $HOME\.dotfiles-windows\winget_apps.json --silent --accept-package-agreements --accept-source-agreements


# 각종 기본 설정파일들 설정
