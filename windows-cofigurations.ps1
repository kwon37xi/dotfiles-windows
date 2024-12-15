# 작업 표시줄(Taskbat) 멀티모니터에서 주 모니터에만 표시하기
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "MMTaskbarEnabled" -Value 0
Stop-Process -Name explorer -Force
# Start-Process를 안해도 자동 재시작됨