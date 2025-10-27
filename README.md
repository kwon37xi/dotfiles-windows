# dotfiles-windows
MS Windows 용 초기 설치/설정 자동화

## 설치
* "설정 -> 시스템 -> 개발자용" 에서 **개발자 모드** 를 활성화한다.
** symlinks 생성 권한을 위해서임.
* Powershell 을 일반모드로 연다(관리자로 열지 말것).
* 아래 명령을 실행한다.

```
Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/kwon37xi/dotfiles-windows/refs/heads/main/install-win.ps1").Content

```

## 설치 후 수작업
### 윈도우 터미널 기본 터미널 변경
* 기본 터미널을 Ubuntu 로 변경한다.
* PowerShell은 `Ctrl+Shift+1`로 언제든지 손쉽게 호출가능하다. Ubuntu(WSL)은 시스템별로 번호가 변경된다.

## TODOs
* 테마 dark 로
* 기준 색 녹색으로
* CPU usage 보여주기
* 작업표시줄 왼쪽으로

