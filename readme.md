docker run -it dockeronwindows/java0:ananth cmd.exe

docker image build -t dockeronwindows/java0:ananth .
docker image build --file Dockerfile.server -t dockeronwindows/ser-java0:ananth .

docker image build --rm=false -t dockeronwindows/java0:ananth .

SETX /M                     Specifies that the variable should be set in
                           the system wide (HKEY_LOCAL_MACHINE)
                           environment. The default is to set the
                           variable under the HKEY_CURRENT_USER
                           environment.
