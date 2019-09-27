# TA_Apk_Crack
927事件流氓软件反编译后源码

目前发现MMTS/assets 是所用来捣乱的资源文件
MMTS/res/drawable 是所使用的图片文件 包括安装后的app icon和首页图片

com/a** 目前感觉这些一个字母的类是用来混淆视线的没有什么实际意义

com/nirenr/screencapture 包下的确在调用手机屏幕截图，单并没有进行发送，没有找到发送的邮箱，意义不明

猜想：
  可能使用了lua脚本阻止用户降低音量
