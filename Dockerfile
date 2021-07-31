# escape=`

FROM mcr.microsoft.com/windows/servercore:1809 as builder

COPY jdk-8u301-windows-x64.exe .
ENV JAVA_HOME C:\java\jdk

SHELL ["cmd", "/K"]
RUN jdk-8u301-windows-x64.exe INSTALL_SILENT=Enable INSTALLDIR=C:\java\jdk

FROM mcr.microsoft.com/windows/nanoserver:1809
COPY --from=builder C:\java\jdk C:\java\jdk

USER ContainerAdministrator
RUN echo Updating PATH: C:\java\jdk\bin;%PATH% `
  && setx /M PATH C:\java\jdk\bin;%PATH% `
  && echo %PATH% `
  && echo Complete.
USER ContainerUser

RUN echo Verifying install ... `
  && echo java -version && java -version `
  && echo javac -version && javac -version `
  && echo Complete.
