@ECHO OFF
echo Chcesz od razu przesłac do repozytorium?
set /p wybor=T/N 
if /I "%wybor%"=="T" goto Tak
goto Nie

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=build

if "%1" == "" goto help

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:help
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:end
popd

xcopy C:\Programy\GIT\Sphinx\build\html\*.* c:\Programy\GIT\Strona /E /H

:Tak

echo Podaj nazwe commita:
set /p Commit=

git add . 
git commit -m "%Commit%"
git push

cd ..
cd Strona
git add .
git commit -m "%Commit%"
git push

:Nie
pause