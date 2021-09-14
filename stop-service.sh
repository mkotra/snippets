#!/bin/bash
APPLICATION=application

kill $(cat $APPLICATION.pid)
echo "Stopped - please check log in case of any problems."
