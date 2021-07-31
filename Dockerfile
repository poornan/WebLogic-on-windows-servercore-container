# escape=`

FROM mcr.microsoft.com/windows/servercore:1809 as builder

COPY jdk-8u301-windows-x64.exe .

# RUN powershell start-process -filepath C:\jdk-8u301-windows-x64.exe -passthru -wait -argumentlist "/s,INSTALL_SILENT=1,SPONSORS=0,INSTALLDIR=c:\Java\jdk-8u301,/L,install64.log"

SHELL ["cmd", "/K"]
RUN jdk-8u301-windows-x64.exe INSTALL_SILENT=Enable INSTALLDIR=C:\java\jdk

FROM mcr.microsoft.com/windows/nanoserver:1809
COPY --from=builder "C:\java\jdk" "C:\java\jdk"
USER ContainerAdministrator
RUN setx PATH "C:\java\jdk\bin;%PATH%"
#CMD setx PATH "C:\java\jdk\bin;%PATH%"


#USER ContainerAdministrator
#RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% \
#    && setx /M PATH %JAVA_HOME%\bin;%PATH% \
#    && echo Complete.
#USER ContainerUser
