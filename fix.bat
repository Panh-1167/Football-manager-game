@echo off
chcp 65001 > nul
echo ===================================================
echo DANG TU DONG SUA LOI VA KHOI DONG FOOTBALL MANAGER
echo ===================================================

echo 1. Dang xoa moi truong .venv cu bi loi...
if exist .venv rmdir /s /q .venv

echo 2. Dang tao moi truong .venv moi...
py -m venv .venv
if errorlevel 1 python -m venv .venv

echo 3. Dang cai dat cac thu vien can thiet...
call .venv\Scripts\activate.bat
pip install flask flask-sqlalchemy werkzeug

echo 4. Dang mo game tren trinh duyet...
start http://localhost:5000
python app.py

pause
