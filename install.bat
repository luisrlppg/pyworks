@echo off
IF NOT EXIST "C:\CAMWorksData\UPG-2\ctl\" (
    echo ERROR: Destination folder not found. Operation aborted.
    exit /b 1
)
xcopy "files\ctl\*" "C:\CAMWorksData\UPG-2\ctl\" /Y

mkdir C:\pyworks
xcopy "files\Scripts" "C:\pyworks\Scripts\" /E /Y
xcopy "tools" "C:\pyworks\tools\" /E /Y

REM Unzip python.zip
IF EXIST "C:\pyworks\tools\python.zip" (
    echo Extracting python.zip...
    mkdir "C:\pyworks\tools\python"
    tar -xf "C:\pyworks\tools\python.zip" -C "C:\pyworks\tools\python"
    IF %ERRORLEVEL% EQU 0 (
        echo Extraction successful.
        del "C:\pyworks\tools\python.zip"
        echo Deleted python.zip.
    ) ELSE (
        echo ERROR: Extraction failed.
    )
) ELSE (
    echo WARNING: python.zip not found in C:\pyworks\tools\. Skipping extraction.
)