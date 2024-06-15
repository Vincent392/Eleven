#!/bin/bash
# Eleven Build Script
# For Linux/Unix systems
echo please, have a JDK setup ready to go with gcc or something before running.
echo press any key to continue
read junk
echo Compiling Java Version (1/4)...
cd jvmversion/src
javac *.java *.class
# not the cleanest system but whatever
cd ..
mkdir jar
cd jar
mkdir com/eleven
cd ..
cd src
mv *.class ../jar/com/eleven
cd ..
mkdir build
cd jar
jar cvfe eleven-lang.jar com.eleven.message ./com/eleven/*.class
# refrence code from LWJBCC-pkg:
# jar cvfe %cmd00%.jar %cmd12%.%cmd13%.%cmd14%.%cmd11% ./%cmd12%/%cmd13%/%cmd14%/*.class
#anyways
mv eleven-lang.jar ../build
cd ..
echo Java version compiled
cd ..
cd lowlevelversion
gcc