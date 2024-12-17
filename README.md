# CXLite

我们以超星学习通为例构建一个APP，后端由Python提供接口，前端由WebView展示一个配套的本地网页

## 构建方式

环境：WSL2 Ubuntu 22.04

命令参考
```
buildozer --quiet android debug;adb install bin/cxlite-0.1-arm64-v8a_armeabi-v7a-debug.apk;adb logcat -c;build-android/9-adb-logcat.sh
```


