#!/usr/bin/env bash

echo "Please wait... running android emulator."

ANDROID_HOME="${PWD}/AppData/Local/Android/Sdk/emulator/emulator"

if [ -z "$1" ]
then
   #Errors and Suggestions
   echo "Enter the name of the emulator..."
   sh $ANDROID_HOME -list-avds
else
   #Run AVD for name 
   sh $ANDROID_HOME -avd $1 -netdelay none -netspeed full
   sleep 30
   react-native run-android
fi



