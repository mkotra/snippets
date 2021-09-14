#!/bin/bash
APPLICATION=app

nohup $JAVA_HOME/bin/java -Xmx1G -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=./ -jar $APPLICATION-service-*.jar --spring.config.location=./config/$APPLICATION-service.properties > /dev/null &
echo "Startup initialized - please check log for details."
