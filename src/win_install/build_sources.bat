echo on
set root_folder=%~d0%~p0

set SourceDir=%root_folder%..\..\..\vds
call %SourceDir%\setenv.bat
cd %SourceDir%\build
devenv vds.sln /Build Debug /Project vds_windows 

set SourceDirTools=%root_folder%..\..\..\vds.net
cd %SourceDirTools%\src\client\IVySoft.VDS.Client.UI.WPF
dotnet build IVySoft.VDS.Client.UI.WPF.csproj -c Debug 

cd %SourceDirTools%\src\client\IVySoft.VDS.Client.UI.WPF.Wallet
dotnet build IVySoft.VDS.Client.UI.WPF.Wallet.csproj -c Debug 

cd %SourceDirTools%\src\client\IVySoft.VDS.Client.UI.WPF.Disk
dotnet build IVySoft.VDS.Client.UI.WPF.Disk.csproj -c Debug 
