#### Примечание
Файл `oneOS_Hvac.apk` в этом каталоге является оригинальным из прошивки GMC с головного устройства.

#### Распаковка APK
Чтобы распаковать apk файл, используйте команду:
```bash
apktool d oneOS_Hvac.apk
```

#### Посмотреть версию приложения:
`~/Library/Android/sdk/build-tools/36.1.0/aapt dump badging oneOS_Hvac.apk | head -n 1`
```
package: name='com.geely.hvac'
versionCode='385'
versionName='1.0.20240929G(181)'
platformBuildVersionName='6.0-2438415'
platformBuildVersionCode='23'
compileSdkVersion='23'
compileSdkVersionCodename='6.0-2438415'
```