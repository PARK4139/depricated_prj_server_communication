echo "______________________________________________________________________________________________________________________________ variable defination
chcp 65001
@echo off
setlocal
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddHHmmss=%%i
cls
echo "______________________________________________________________________________________________________________________________ add
git add *  
echo "______________________________________________________________________________________________________________________________ commit
git commit -m "%yyyyMMddHHmmss%" 
echo "______________________________________________________________________________________________________________________________ push
git push -u origin main  
echo "______________________________________________________________________________________________________________________________ status
:: git status | find "clean"
git status  
cls
echo "______________________________________________________________________________________________________________________________ add
git add * | find "clean"
echo "______________________________________________________________________________________________________________________________ commit
git commit -m "%yyyyMMddHHmmss%" | find "clean"
echo "______________________________________________________________________________________________________________________________ push
git push -u origin main | find "100%"
echo "______________________________________________________________________________________________________________________________ status
:: git status | find "clean"
git status | find "clean"
REM pause
call py TTS.py "깃허브에 프로젝트 커밋시도를 완료했습니다"
timeout 2
taskkill -im Alsong.exe