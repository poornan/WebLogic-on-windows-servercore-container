# escape=`

FROM mcr.microsoft.com/windows/servercore:1809

COPY jdk-8u301-windows-x64.exe .

# RUN powershell start-process -filepath C:\jdk-8u301-windows-x64.exe -passthru -wait -argumentlist "/s,INSTALL_SILENT=1,SPONSORS=0,INSTALLDIR=c:\Java\jdk-8u301,/L,install64.log"

SHELL ["cmd", "/K"]
RUN jdk-8u301-windows-x64.exe INSTALL_SILENT=Enable INSTALLDIR=C:\java\jdk
#RUN cmd /K jdk-8u301-windows-x64.exe INSTALL_SILENT=Enable INSTALLDIR=C:\java\jdk
#RUN ["jdk-8u301-windows-x64.exe", "INSTALL_SILENT=Enable", "INSTALLDIR=java\jdk"]
#RUN cmd install-java.bat
# RUN setx PATH "C:\java\jdk\bin;%PATH%"
