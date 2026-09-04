# oneOS_Hvac — расширение климата для Geely Monjaro REST 1

[![Release](https://img.shields.io/github/v/release/Schum-io/Geely_Monjaro_oneOS_Hvac)](https://github.com/Schum-io/Geely_Monjaro_oneOS_Hvac/releases)
[![Download Latest](https://img.shields.io/badge/Download-Latest%20Release-blue)](https://github.com/Schum-io/Geely_Monjaro_oneOS_Hvac/releases)
[![Downloads](https://img.shields.io/github/downloads/Schum-io/Geely_Monjaro_oneOS_Hvac/total)](https://github.com/Schum-io/Geely_Monjaro_oneOS_Hvac/releases)

Magisk-модуль, расширяющий стандартное приложение климата (HVAC) головного устройства **Geely Monjaro REST 1**.

За основу взят APK из прошивки **GMC** (Geely Mod Custom).

Добавляет на главный экран климата управление обогревом, вентиляцией и массажем сидений — функции, которые в оригинальном приложении спрятаны в дополнительном меню.

Дополнительно добавляет в меню настроек (шестерёнка на экране климата) переключатель **«Отключить автозакрытие»** — окно климата перестаёт закрываться само через 10 секунд.

---

## Скриншоты результата

### Передний ряд (1 ряд)

На главную панель климата выведены отдельные кнопки вентиляции и обогрева передних сидений, обогрева руля и массажа водительского сиденья.

![Главный экран климата с элементами управления передними сиденьями](docs/img/front_row1.jpg)

| Все добавленные функции активны | Пример раздельного управления |
|---|---|
| ![Одновременно включены вентиляция и обогрев передних сидений, обогрев руля и массаж водительского сиденья](docs/img/front_row1_heat_and_vent_active.jpg) | ![Включены обогрев водительского сиденья и вентиляция пассажирского сиденья](docs/img/front_row1_heat_on.jpg) |

### Задний ряд (2 ряд)

После переключения на второй ряд на главном экране доступны отдельные кнопки обогрева левого и правого задних сидений.

![Включён обогрев обоих сидений второго ряда](docs/img/rear_row2_heat_on.jpg)

### Регулировка сиденья

На экране положения водительского сиденья доступны регулировки, три ячейки памяти, а также сохранение и восстановление выбранного положения.

![Регулировка положения водительского сиденья и управление памятью](docs/img/seat.jpeg)

---

## Отключение автозакрытия

В стоковом приложении окно климата само сворачивается через **10 секунд** после последнего касания. Таймер задан в коде (`AutoHideActivity`: `mOpenTime = 10000`, `mAutoHide = true`) и через интерфейс не настраивается.

Модуль добавляет третью строку в меню за шестерёнкой:

![Включённый переключатель «Отключить автозакрытие» в настройках климата](docs/img/autoclose_option.jpeg)

| Переключатель | Что делает |
|---|---|
| **Отключить автозакрытие**<br>*Окно климата не будет закрываться само* | Выключено (по умолчанию) — стоковое поведение, окно сворачивается через 10 с.<br>Включено — окно остаётся открытым, пока его не закрыть тапом вне панели. |

Состояние сохраняется в настройках самого приложения (`SharedPreferences`, ключ `mod_disable_auto_hide`) и применяется сразу — перезагрузка не нужна.

Всплывающие диалоги приложения (в том числе само меню настроек) продолжают закрываться автоматически, как в стоке.

---

## Отключение автозакрытия

В стоковом приложении окно климата само сворачивается через **10 секунд** после последнего касания. Таймер задан в коде (`AutoHideActivity`: `mOpenTime = 10000`, `mAutoHide = true`) и через интерфейс не настраивается.

Модуль добавляет третью строку в меню за шестерёнкой:

| Переключатель | Что делает |
|---|---|
| **Отключить автозакрытие**<br>*Окно климата не будет закрываться само* | Выключено (по умолчанию) — стоковое поведение, окно сворачивается через 10 с.<br>Включено — окно остаётся открытым, пока его не закрыть тапом вне панели. |

Состояние сохраняется в настройках самого приложения (`SharedPreferences`, ключ `mod_disable_auto_hide`) и применяется сразу — перезагрузка не нужна.

Всплывающие диалоги приложения (в том числе само меню настроек) продолжают закрываться автоматически, как в стоке.

---

## Изменённые файлы

### Layout

| Файл | Описание |
|------|----------|
| `app/src/main/res/layout/pager_item_aircondition.xml` | Главный экран климата — добавлены новые элементы управления |

### Smali (декомпилированный байткод)

**Управление сиденьями** — добавленные классы в пакете `com/geely/hvac/adapter/`:

| Класс | Описание |
|-------|----------|
| `AirConditionViewHolder$AcPanelController` | Основной контроллер панели климата |
| `AirConditionViewHolder$AcPanelController$ContainerRunnable` | Управление контейнером панели |
| `AirConditionViewHolder$AcPanelController$Row1LeftHeatRunnable` | Обогрев, левая сторона (ряд 1) |
| `AirConditionViewHolder$AcPanelController$Row1LeftMassageRunnable` | Массаж, левая сторона (ряд 1) |
| `AirConditionViewHolder$AcPanelController$Row1LeftWindRunnable` | Вентиляция, левая сторона (ряд 1) |
| `AirConditionViewHolder$AcPanelController$Row1RightHeatRunnable` | Обогрев, правая сторона (ряд 1) |
| `AirConditionViewHolder$AcPanelController$Row1RightWindRunnable` | Вентиляция, правая сторона (ряд 1) |
| `AirConditionViewHolder$AcPanelController$Row1SteeringWheelHeatRunnable` | Обогрев руля (ряд 1) |
| `AirConditionViewHolder$AcPanelController$Row2LeftRunnable` | Управление, левая сторона (ряд 2) |
| `AirConditionViewHolder$AcPanelController$Row2RightRunnable` | Управление, правая сторона (ряд 2) |

Изменён `AirConditionViewHolder` — из конструктора вызывается `initAcPanelController()`.

**Отключение автозакрытия** — пакет `com/geely/hvac/activity/`:

| Класс | Описание |
|-------|----------|
| `AcSetActivity$AutoHideSwitchListener` | Добавлен — сохраняет состояние переключателя |
| `AcSetActivity` | Изменён — в `getView()` строится новая строка меню настроек |
| `GlyMainActivity` | Изменён — в `onResume()` читается флаг и вызывается `setAutoHide()` |

Новая строка меню создаётся кодом, а не в `layout_ac_set.xml`: эта разметка использует Data Binding, и добавление в неё ещё одного элемента потребовало бы правки сгенерированного класса привязки. Поэтому ресурсы приложения не меняются вовсе — подписи переключателя зашиты в smali.

---

## Работа с APK через apktool

### Распаковка APK

Распаковать оригинальный APK в рабочий каталог:
```bash
apktool d oneOS_Hvac.apk -o apktool_workspace/modified/oneOS_Hvac
```

После этого в `apktool_workspace/modified/oneOS_Hvac/` появятся ресурсы и smali-код.
**Сборка APK происходит из этого каталога.**

### Редактирование layout файлов

Layout файлы редактируются в каталоге `app/src/main/res/layout/` — здесь используется Android Data Binding.

После внесения изменений скрипт сборки (`build_magisk_module.sh`) **автоматически** копирует их в `apktool_workspace/modified/oneOS_Hvac/res/layout/` с удалением Data Binding-разметки, несовместимой с apktool.

Для ручного копирования:
```bash
cp app/src/main/res/layout/pager_item_aircondition.xml \
   apktool_workspace/modified/oneOS_Hvac/res/layout/
```

### Сборка APK

```bash
apktool b apktool_workspace/modified/oneOS_Hvac -o magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk
```

### Подпись APK

1. **Создание keystore** (только при первом использовании):
    ```bash
    keytool -genkey -v -keystore oneOS_Hvac.keystore \
        -alias oneOS_Hvac -keyalg RSA -keysize 2048 -validity 10000
    ```

2. **Настройка `.env` файла** в корне проекта:
    ```
    KEYSTORE_PASSWORD=ваш_пароль
    ```

3. **Подпись APK**:
    ```bash
    jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 \
        -keystore oneOS_Hvac.keystore \
        -storepass "$KEYSTORE_PASSWORD" \
        magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk oneOS_Hvac
    ```

---

## Автоматическая сборка модуля Magisk

```bash
./build_magisk_module.sh
```

Скрипт выполняет весь цикл автоматически:

1. Копирует изменённые layout файлы из `app/src/main/res/layout/` в `apktool_workspace/modified/oneOS_Hvac/res/layout/` (с удалением Data Binding)
2. Собирает APK: `apktool b apktool_workspace/modified/oneOS_Hvac`
3. Подписывает APK (пароль берётся из `.env`)
4. Создаёт архив модуля: `./build/oneOS_Hvac.zip`

> **Требования:** файл `.env` с переменной `KEYSTORE_PASSWORD` должен существовать до запуска скрипта.

### Установка модуля

Готовый модуль `./build/oneOS_Hvac.zip` устанавливается через **Magisk Manager** на устройстве:
`Magisk → Modules → Установить из хранилища → oneOS_Hvac.zip`

---

## Просмотр логов

На головном устройстве открыть терминал и выполнить:
```bash
su
logcat -f /storage/sdcard/crash_log.txt
```
