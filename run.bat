@echo off
chcp 65001 > nul
title Football Manager Web - FC Mobile Edition
cls

echo ========================================================
echo       FOOTBALL MANAGER WEB - PHIÊN BẢN FC MOBILE 24/25
echo ========================================================
echo.

:: [1] Dọn dẹp cổng 5000 và các tiến trình cũ
echo [1/3] Đang kiểm tra và giải phóng cổng kết nối...
for /f "tokens=5" %%a in ('netstat -aon 2^>nul ^| findstr ":5000" ^| findstr "LISTENING"') do (
    taskkill /f /pid %%a >nul 2>&1
)
taskkill /f /im FootballManager.exe >nul 2>&1
taskkill /f /im run.exe >nul 2>&1

:: [2] Kiểm tra thư viện
echo [2/3] Đang chuẩn bị hệ thống game...
python -m pip install -r requirements.txt --quiet --disable-pip-version-check >nul 2>&1

:: [3] Tự động kích hoạt mở Tab Trình duyệt Web
echo [3/3] Đang mở Tab trình duyệt web...
start "" http://127.0.0.1:5000

echo.
echo ========================================================
echo  🚀 GAME ĐÃ SẴN SÀNG TẠI: http://127.0.0.1:5000
echo  🛡️ Giao diện Đội Hình: http://127.0.0.1:5000/squad
echo  (Vui lòng GIỮ cửa sổ này khi đang chơi game)
echo ========================================================
echo.

python app.py

pause
