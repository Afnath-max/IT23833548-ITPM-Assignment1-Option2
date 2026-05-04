@echo off
echo ==========================================
echo IT3040 ITPM Assignment 1 - Option 2
echo Registration Number: IT23833548
echo Running Playwright Automation Test
echo ==========================================

cd /d "%~dp0test_automation_ui"

echo.
echo Upgrading pip...
python -m pip install -U pip

echo.
echo Installing required Python packages...
python -m pip install -r "%~dp0requirements.txt"

echo.
echo Installing Playwright browsers...
python -m playwright install

echo.
echo Running automation test...
python image_preview_test.py --url "https://www.pixelssuite.com/convert-to-png" --slow-mo-ms 2000

echo.
echo ==========================================
echo Automation finished.
echo Check:
echo test_automation_ui\execution_results.csv
echo test_automation_ui\results\preview_pass.png
echo ==========================================
pause
