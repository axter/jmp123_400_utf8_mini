@echo ит╨Р...
@rem ----------------------------------------------------------------
if not exist bin md bin
set classpath=bin
@rem ----------------------------------------------------------------
javac -d bin -encoding utf-8 src\jmp123\decoder\*.java
javac -d bin -encoding utf-8 src\jmp123\output\Audio.java
javac -d bin -encoding utf-8 src\jmp123\demo\*.java
@rem ----------------------------------------------------------------
jar cvfm jmp123.jar manifest.mf -C bin .
@rem ----------------------------------------------------------------
@pause