@echo off
setlocal

:: Задаём переменные
set ARCHIVE_PATH=C:\path\to\your\archive.zip
set TARGET_PATH=C:\path\to\target\directory

:: Проверяем, существует ли целевая директория, если нет, создаём её
if not exist "%TARGET_PATH%" (
    mkdir "%TARGET_PATH%"
)

:: Распаковываем архив в целевую директорию
powershell -Command "Expand-Archive -Path '%ARCHIVE_PATH%' -DestinationPath '%TARGET_PATH%' -Force"

:: Проверка успешности распаковки
if %errorlevel% neq 0 (
    echo Ошибка при распаковке архива
    exit /b %errorlevel%
) else (
    echo Архив успешно распакован
)

endlocal
@echo on