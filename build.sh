#!/bin/bash
# Eleven Build Script
# For Linux/Unix systems
echo please, have a JDK setup ready to go with gcc or something before running.
echo press any key to continue
read junk
echo Compiling Java Version (1/8)...
cd jvmversion/src
javac *.java *.class
if [ $? -ne 0]; then
echo "Failed to compile Java version skipping"
fi
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
echo making eleven-lang.jar (2/8)...
jar cvfe eleven-lang.jar com.eleven.message ./com/eleven/*.class
if [ $? -ne 0 ]; then
   echo "Failed to make eleven-lang.jar"
fi
# refrence code from LWJBCC-pkg:
# jar cvfe %cmd00%.jar %cmd12%.%cmd13%.%cmd14%.%cmd11% ./%cmd12%/%cmd13%/%cmd14%/*.class
#anyways
mv eleven-lang.jar ../build
cd ..
cd ..
cd lowlevelversion
echo Compiling low level version (3/8)...
for file in main_*.c; do
    obj_file="${file%.c}.o"
    gcc -c "$file" -o "$obj_file"
    if [ $? -ne 0 ]; then
        echo "Compilation of $file failed!"
        echo "Failed to compile low-level version of Eleven"
    fi
mkdir build
mv *.o build
cd build
echo linking low-level version (4/8)..
gcc main_*.o -o main
if [ $? -ne 0 ]; then
    echo "Linking failed!"
    echo "Failed to link low-level version of Eleven"
fi
cd ..
cd ..
cd webversion
echo zipping JavaScript version for distribution (5/8)...
#zip command
mv eleven-webver.zip ..
cd ..
cd compiler
echo Building compiler (6/8)...
gcc *.c -o *.o
if [ $? -ne 0]; then
     echo "Compile failed"
     echo "Failed to compile the Eleven Compiler"
fi
echo Linking compiler (7/8)...
gcc *.o -o compiler
if [ $? -ne 0]; then
     echo "Linking failed"
     echo "Failed to link the Eleven Compiler"
fi
echo Cleaning up (8/8)...
rm -f *.o
cd ..
cd javaversion
rm -f com/eleven
cd ..
cd lowlevelversion
rm -f *.o
cd ..
echo Finished!
echo press any key to quit
read junk