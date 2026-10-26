@echo off
set "JAVA_HOME=D:\Develop\IDEA\IntelliJ IDEA 2025.3.3\jbr"
set "PATH=%JAVA_HOME%\bin;%PATH%"

echo === Java version ===
java -version
echo.
echo === Starting diet-agent on http://localhost:8080 ===
echo === Debug listener on port 5005 (attach from VSCode) ===
echo.

java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005 -jar target\diet-agent-1.0-SNAPSHOT.jar
