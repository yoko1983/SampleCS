REM "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" SampleCS.sln /t:build /p:configuration=release /p:Platform="x64"
REM MSBuild.exe SampleCS.sln /t:build /p:configuration=Debug /p:Platform="Any CPU"
rd /s /q obj
rd /s /q bin
dotnet clean
dotnet build
dotnet pack
dotnet nuget push bin\Release\SampleCS-test.*.nupkg --api-key %NUGET_APIKEY% --source https://api.nuget.org/v3/index.json
