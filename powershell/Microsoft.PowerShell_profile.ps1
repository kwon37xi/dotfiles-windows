# PowerShell Profile
Set-Alias -name vi -value "C:\Program Files\Vim\vim91\vim.exe"

# ls alias - 기본으로 ls = Get-ChildItem 으로 지정돼 있음. 이를 먼저 제거해야함.`
Remove-Item Alias:ls
Set-Alias -name ls -value "lsd"

# 파라미터가 있을 경우 alias 불가. function 으로 만들어야 함.
function ll {
    lsd -lah $args
}

# Path 추가
Set-Item -Path Env:Path -Value ($Env:Path + ";C:\Program Files\Vim\vim91;C:\Program Files (x86)\GnuWin32\bin")