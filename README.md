
### Список измененых файлов
- `app/src/main/res/layout/pager_item_aircondition.xml`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24ContainerRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24Row1LeftHeatRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24Row1LeftWindRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24Row1RightHeatRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24Row1RightWindRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24Row1SteeringWheelHeatRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24Row2LeftRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController%24Row2RightRunnable.smali`
- `apktool_workspace/modified/oneOS_Hvac/smali/com/geely/hvac/adapter/AirConditionViewHolder%24AcPanelController.smali`
  
### Как работать с APK через apktool

#### Распаковка APK
Чтобы распаковать apk файл в каталог `apktool_workspace/modified/oneOS_Hvac`, используйте команду:
```bash
apktool d исходный_файл.apk -o apktool_workspace/modified/oneOS_Hvac
```
Где `исходный_файл.apk` - это путь к исходному APK файлу, который нужно распаковать.
После этого появится папка `apktool_workspace/modified/oneOS_Hvac` с ресурсами и smali-кодом. **Приложение собирается из этого каталога.**

#### Работа с layout файлами
1. **Редактирование layout файлов:**
   - Layout файлы редактируются в каталоге `app/src/main/res/layout/`
   - Это основной каталог для работы с XML layout файлами

2. **Копирование изменений в apktool_workspace:**
   После внесения изменений в layout файлы в каталоге `app/`, их нужно скопировать в `apktool_workspace/modified/oneOS_Hvac/res/layout/`:
   ```bash
   cp app/src/main/res/layout/*.xml apktool_workspace/modified/oneOS_Hvac/res/layout/
   ```
   Или для конкретного файла:
   ```bash
   cp app/src/main/res/layout/имя_файла.xml apktool_workspace/modified/oneOS_Hvac/res/layout/
   ```
   
   **Примечание:** Скрипт `build_magisk_module.sh` автоматически копирует модифицированные файлы из списка `FILES_TO_COPY` в каталог `apktool_workspace/modified/oneOS_Hvac`.

#### Сборка APK
Приложение собирается из каталога `apktool_workspace/modified/oneOS_Hvac`. Чтобы собрать приложение обратно, используйте команду:
```bash
apktool b apktool_workspace/modified/oneOS_Hvac -o magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk
```
Эта команда создаст новый apk файл `oneOS_Hvac.apk` в каталоге `magisk/system/app/oneOS_Hvac/`

#### Подпись APK
Чтобы приложение можно было установить на устройство, его нужно подписать.

1.  **Создание ключа (если у вас его нет):**
    ```bash
    keytool -genkey -v -keystore oneOS_Hvac.keystore -alias oneOS_Hvac -keyalg RSA -keysize 2048 -validity 10000
    ```
    Вам нужно будет придумать пароли для хранилища ключей и для самого ключа.

2.  **Настройка .env файла:**
    Создайте файл `.env` в корне проекта и добавьте в него пароль от хранилища ключей:
    ```
    KEYSTORE_PASSWORD=ваш_пароль
    ```

3.  **Подпись приложения с помощью `jarsigner`:**
    ```bash
    jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore oneOS_Hvac.keystore magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk oneOS_Hvac
    ```
    Вам нужно будет ввести пароль от хранилища ключей (или использовать переменную из .env файла).

После этого `oneOS_Hvac.apk` будет подписан и готов к установке.

### Автоматическая сборка
Для автоматической сборки APK, подписи и создания модуля Magisk используйте скрипт:
```bash
./build_magisk_module.sh
```

Скрипт автоматически:
- Копирует модифицированные файлы из списка `FILES_TO_COPY` в каталог `apktool_workspace/modified/oneOS_Hvac`
- Собирает APK файл из каталога `apktool_workspace/modified/oneOS_Hvac` в каталог `magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk`
- Подписывает его (пароль берется из `.env` файла)
- Создает модуль Magisk `./build/oneOS_Hvac.zip`

**Важно:** Модифицированные файлы, указанные в списке `FILES_TO_COPY` в скрипте, автоматически копируются в каталог `apktool_workspace/modified/oneOS_Hvac` перед сборкой.

### Просмотр логов
на ГУ запустить терминал и в нем ввести команду:
1. `su`
2. `logcat -f /storage/sdcard/crash_log.txt`
