# CXLite

## 构建方式

环境：WSL2 Ubuntu 22.04

命令参考
```
buildozer --quiet android debug;adb install bin/cxlite-0.1-arm64-v8a_armeabi-v7a-debug.apk;adb logcat -c;build-android/9-adb-logcat.sh
```


