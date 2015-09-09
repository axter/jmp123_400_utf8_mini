jmp123 版本0.400
迄今为止最快的MP3解码器[1]
2012.09.23
========================================================================

1.注意事项
------------------------------------------------------------------------
(1)使用本程序之前请先阅读Copyright.txt。
(2)发现bug请到主页报告。


2.如何编译、启动播放
------------------------------------------------------------------------
(1)编译
windows 平台用户运行 build.cmd 批命令脚本；
linux 平台用户运行 build.sh 批命令脚本；

(2)启动控制台迷你播放器
java -jar jmp123.jar <文件名>
或
java -cp bin jmp123.demo.Play <文件名>
指定的文件名是本地磁盘MP3文件。


3.解码速度测试(只解码不播放)[2]
------------------------------------------------------------------------
java -cp jmp123.jar jmp123.demo.Test <文件名>
或
java -cp bin jmp123.demo.Test <文件名>

指定 JVM 参数,解码速度更快:
java -server -XX:+AggressiveOpts -cp jmp123.jar jmp123.demo.Test <文件名>
指定的文件名为本地磁盘MP3文件。


4.主页
------------------------------------------------------------------------
http://jmp123.sf.net/

========================================================================

注：[1]必须是在2核心及以上CPU并且指定JVM参数"-server -XX:+AggressiveOpts"
的条件下测试解码速度才足够快。和其它任何计算机语言写的并且目前是开源的
MP3解码器实测对比，jmp123 v0.400是最快的。

[2]由于解码速度很快，指定的MP3文件播放时长60分钟以上测试结果更可信，MP3文
件的位率越大越好。

========================================================================

附：jmp123 v0.400 的一组解码速度实测数据

java -server -XX:+AggressiveOpts -cp bin jmp123.demo.Test image.mp3
[busy waits: outputLock.wait=17007, ch=0, ciLock.wait=11689, pcmbufLock.wait=3335]
[busy waits: outputLock.wait=17007, ch=1, ciLock.wait=10132, pcmbufLock.wait=7918]
MPEG-1, Layer 3, 44100Hz, Joint Stereo(M/S)
      length: 110815600 bytes, 176293 frames
elapsed time: 9,146,123,553ns (9.146123553s, 19275.16 fps)

测试环境：
(1) JDK
java version "1.6.0_29"
Java(TM) SE Runtime Environment (build 1.6.0_29-b11)
Java HotSpot(TM) Client VM (build 20.4-b02, mixed mode, sharing)
(2) CPU
intel e5800(2核心，3.2GHz)
(2) 目标文件 image.mp3
编码VBR，平均位率196 kbps，共176293帧，播放时长76:45