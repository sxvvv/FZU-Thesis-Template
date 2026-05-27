@echo off
chcp 65001 >nul
echo Building fzuthesis...

xelatex -interaction=nonstopmode fzuthesis.tex
if errorlevel 1 exit /b 1

biber fzuthesis
if errorlevel 1 exit /b 1

xelatex -interaction=nonstopmode fzuthesis.tex
if errorlevel 1 exit /b 1

xelatex -interaction=nonstopmode fzuthesis.tex
if errorlevel 1 exit /b 1

echo Done. See fzuthesis.pdf
