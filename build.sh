#------------------------------------------------------------------------
#            JMP123 Linux Build    http://jmp123.sf.net/
#------------------------------------------------------------------------
echo "Please wait a minute..."
if [ ! -d bin ];then
mkdir bin
fi
#------------------------------------------------------------------------
javac -cp bin -d bin -encoding utf-8 src/jmp123/decoder/*.java
javac -cp bin -d bin -encoding utf-8 src/jmp123/output/Audio.java
javac -cp bin -d bin -encoding utf-8 src/jmp123/demo/*.java
#------------------------------------------------------------------------
jar cvfm jmp123.jar manifest.mf -C bin .
#------------------------------------------------------------------------
