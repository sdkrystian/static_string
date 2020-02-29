@echo off
title build docs
echo Clearing bin and copying folders...
rd /s /q "C:\Users\Krystian\lib\boost\boost_1_72_0\bin.v2\libs\static_string"
xcopy /q /s /y /c "C:\Users\Krystian\Documents\Visual Studio 2019\Projects\fixed_string\include" "C:\Users\Krystian\lib\boost\boost_1_72_0\libs\static_string\include"
xcopy /q /s /y /c "C:\Users\Krystian\Documents\GitHub\fixed_string\doc" "C:\Users\Krystian\lib\boost\boost_1_72_0\libs\static_string\doc"
cd C:\Users\Krystian\lib\boost\boost_1_72_0\libs\static_string
b2 doc
pause >nul