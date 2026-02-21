@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

if "%~1"=="clean" goto :clean

echo ==================================================
echo   Deep Learning Handbook - Build Script
echo ==================================================
echo.

echo [0/5] Checking LaTeX Environment...
where xelatex >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] XeLaTeX not found! Please install MiKTeX or TeX Live.
    echo Ensure the 'xelatex' command is in your system PATH.
    exit /b 1
)
echo - XeLaTeX is installed and accessible.
echo.

echo [1/5] Cleaning previous build artifacts...
call :clean_files
echo - Workspace cleaned.
echo.

echo [2/5] Running first XeLaTeX pass (scanning structure)...
echo - Compiling main.tex... (This may take a few moments)
xelatex -interaction=nonstopmode main.tex > nul
if %errorlevel% neq 0 (
    echo [ERROR] XeLaTeX first pass failed. Check main.log for details.
    exit /b 1
)
echo - Pass 1 completed successfully.
echo.

echo [3/5] Running BibTeX pass (generating references)...
if exist main.aux (
    echo - Processing references...
    bibtex main > nul
) else (
    echo - No main.aux found, skipping BibTeX.
)
echo.

echo [4/5] Running second XeLaTeX pass (building TOC and Links)...
echo - Recompiling main.tex to resolve cross-references...
xelatex -interaction=nonstopmode main.tex > nul
if %errorlevel% neq 0 (
    echo [ERROR] XeLaTeX second pass failed.
    exit /b 1
)
echo - Pass 2 completed successfully.
echo.

echo [5/5] Final cleanup...
call :clean_files
echo.

echo ==================================================
echo   BUILD SUCCESS! The file main.pdf is ready.
echo ==================================================
exit /b 0

:clean
echo ==================================================
echo   Deep Learning Handbook - Cleaning Artifacts
echo ==================================================
call :clean_files
echo - Done.
exit /b 0

:clean_files
del /Q /S *.aux *.log *.out *.toc *.bbl *.blg *.fls *.fdb_latexmk *.synctex.gz >nul 2>&1
del /Q /S chapters\*.aux chapters\*.log >nul 2>&1
exit /b 0
