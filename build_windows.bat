@echo off

echo [1/3] Patching Linux X11 flags to Windows WGL...
powershell -NoProfile -Command "Get-ChildItem -Path 'source\glfw\' -Recurse -File | ForEach-Object { $text = Get-Content $_.FullName -Raw; if ($text -match '_GLFW_X11' -or $text -match '_GLFW_GLX') { $text = $text -replace '_GLFW_X11', '_GLFW_WIN32' -replace '_GLFW_GLX', '_GLFW_WGL'; Set-Content -Path $_.FullName -Value $text } }"

echo [2/3] Navigating to source directory...
cd "source\msvc\Star Ruler 2"

echo [3/3] Compiling the engine via MSBuild...
msbuild "Star Ruler 2.sln" /p:Configuration=Release /p:Platform=x64

echo.
echo Build complete. Check the bin\win64 directory for Star Ruler 2.exe.
pause
