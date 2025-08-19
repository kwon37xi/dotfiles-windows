# 탐색기 고급 설정 변경.
$explorerAdvancedRegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

## 작업 표시줄(Taskbar) 멀티모니터에서 주 모니터에만 표시하기
Set-ItemProperty -Path $explorerAdvancedRegPath -Name "MMTaskbarEnabled" -Value 0

## 시작 메뉴에 추천 파일 끄기
Set-ItemProperty -Path $explorerAdvancedRegPath -Name "Start_TrackDocs" -Value 0

## 파일 탐색기에 최근 파일 끄기
Set-ItemProperty -Path $explorerAdvancedRegPath -Name "ShowRecent" -Value 0

## 작업표시줄 점프 목록에 항목 표시 갯수 조정
Set-ItemProperty -Path $explorerAdvancedRegPath -Name "JumpListItems_Maximum" -Value 10

Stop-Process -Name explorer -Force
# Start-Process를 안해도 자동 재시작됨
