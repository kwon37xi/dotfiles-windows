#Requires AutoHotkey v2.0

; Volume control shortcuts
; Win + Ctrl + Alt + Up: Volume Up
#^!Up::Send "{Volume_Up}"

; Win + Ctrl + Alt + Down: Volume Down
#^!Down::Send "{Volume_Down}"

; Win + Ctrl + Alt + Delete: Volume Mute
#^!Delete::Send "{Volume_Mute}"

; mic mute 기능 추가 필요.

; Win + M: Toggle window maximize/restore
#m::
{
    if WinGetMinMax("A") = 1  ; If window is maximized
        WinRestore "A"
    else
        WinMaximize "A"
}

; Ctrl + Alt + End: Shutdown
^!End::
{
    result := MsgBox("컴퓨터를 종료하시겠습니까?", "시스템 종료", "YesNo Icon?")
    if result = "Yes"
        Shutdown 1
}

; Ctrl + Shift + Alt + End: Reboot
^+!End::
{
    result := MsgBox("컴퓨터를 재부팅하시겠습니까?", "시스템 재부팅", "YesNo Icon?")
    if result = "Yes"
        Shutdown 2
}

; Win + T: Launch Windows Terminal
#t::Run "wt.exe"

; Win + Page Up: Previous virtual desktop
#PgUp::Send "#^{Left}"

; Win + Page Down: Next virtual desktop
#PgDn::Send "#^{Right}"

; Ctrl + Alt + Delete: 원래 시스템 종료 메뉴가 나오는 매핑이라서 지정 안함.

