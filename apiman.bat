@echo off

SET CLI_JAR=./build/libs/apiman-cli-1.0.0-SNAPSHOT-all.jar

If Not Exist %CLI_JAR% (
    call ./gradlew.bat clean shadowJar
    cls
)

java -jar %CLI_JAR% %*
