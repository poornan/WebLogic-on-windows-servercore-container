docker run -it dockeronwindows/java0:ananth cmd.exe

docker run -it dockeronwindows/ser-java0:ananth cmd.exe

docker run -it oracle/weblogic:12.2.1.3-developer cmd.exe

docker run -d -p 7001:7001 -p 9002:9002 -v C:\u01\oracle\properties:C:\u01\oracle\properties -e ADMINISTRATION_PORT_ENABLED=true -e DOMAIN_NAME=docker_domain oracle/ --name WLS weblogic:12.2.1.3-developer

docker run --name WLS -d -p 7001:7001 -p 9002:9002 -v C:\u01\oracle\properties:C:\u01\oracle\properties -e ADMINISTRATION_PORT_ENABLED=false -e DOMAIN_NAME=docker_domain oracle/weblogic:12.2.1.3-developer

docker run -it --name WLS oracle/weblogic:12.2.1.3-developer cmd.exe

docker image build --file Dockerfile0.developer -t oracle/weblogic:12.2.1.3-developer .

docker image build -t dockeronwindows/java0:ananth .
docker image build --file Dockerfile.server -t dockeronwindows/ser-java0:ananth .

docker image build --rm=false -t dockeronwindows/java0:ananth .

SETX /M                     Specifies that the variable should be set in
                           the system wide (HKEY_LOCAL_MACHINE)
                           environment. The default is to set the
                           variable under the HKEY_CURRENT_USER
                           environment.

docker run -it --name WLS -v C:\u01\oracle\properties:C:\u01\oracle\properties oracle/weblogic:12.2.1.3-developer cmd.exe
