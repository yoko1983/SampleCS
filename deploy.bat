@echo off
REM 環境変数　%NUGET_APIKEY%　にAPIキーをセット
dotnet nuget push bin\Debug\SampleCS-test.1.0.0.nupkg --api-key %NUGET_APIKEY% --source https://api.nuget.org/v3/index.json
