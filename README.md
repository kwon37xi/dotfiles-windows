# dotfiles-windows
MS Windows 용 초기 설치/설정 자동화

## 설치
* "설정 -> 시스템 -> 개발자용" 에서 **개발자 모드** 를 활성화한다.
** symlinks 생성 권한을 위해서임.
* Powershell 을 일반모드로 연다(관리자로 열지 말것).
* 아래 명령을 실행한다.

## TODOs
* 테마 dark 로
* 기준 색 녹색으로
* IntelliJ Android, data, 등등 설치
* CPU usage 보여주기
* 작업표시줄 왼쪽으로

```
Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/kwon37xi/dotfiles-windows/refs/heads/main/install-win.ps1").Content

```
