#!/bin/bash
# Eleven Build Script
# For Linux/Unix systems
echo please, have a JDK setup ready to go with gcc or something before running.
echo press any key to continue
read junk
cd jvmversion/src
javac *.java *.class
# not the cleanest system but whatever
cd ..
mkdir jar
cd src
mv *.class ../jar
cd ..
cd jar
jar cvse