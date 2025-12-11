#!/bin/bash

# Список файлов для копирования
FILES_TO_COPY=(
    "app/src/main/res/layout/pager_item_aircondition.xml:apktool_workspace/modified/oneOS_Hvac/res/layout/pager_item_aircondition.xml"
)

# Цвета для вывода
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Начало сборки APK и модуля Magisk ===${NC}"

# Загружаем переменные из .env файла
if [ -f .env ]; then
    echo -e "${YELLOW}Загружаем переменные из .env файла...${NC}"
    export $(grep -v '^#' .env | xargs)
else
    echo -e "${RED}Ошибка: файл .env не найден!${NC}"
    echo -e "${YELLOW}Создайте файл .env с переменной KEYSTORE_PASSWORD${NC}"
    exit 1
fi

# Проверяем наличие пароля
if [ -z "$KEYSTORE_PASSWORD" ]; then
    echo -e "${RED}Ошибка: переменная KEYSTORE_PASSWORD не установлена в .env файле!${NC}"
    exit 1
fi

# Проверяем наличие keystore файла, если нет - создаем
if [ ! -f "oneOS_Hvac.keystore" ]; then
    echo -e "${YELLOW}Keystore файл не найден. Создаем новый keystore...${NC}"
    keytool -genkey -v -keystore oneOS_Hvac.keystore \
        -alias oneOS_Hvac \
        -keyalg RSA \
        -keysize 2048 \
        -validity 10000 \
        -storepass "$KEYSTORE_PASSWORD" \
        -keypass "$KEYSTORE_PASSWORD" \
        -dname "CN=oneOS_Hvac, OU=Development, O=Geely, L=Unknown, ST=Unknown, C=US" \
        -noprompt
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}Ошибка при создании keystore файла!${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}Keystore файл успешно создан${NC}"
else
    echo -e "${GREEN}Keystore файл найден${NC}"
fi

# Удаляем старый APK файл
echo -e "${YELLOW}Удаляем старый APK файл из magisk/system/app/oneOS_Hvac/${NC}"
rm -f ./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk

# Определяем каталог для сборки
BUILD_DIR="apktool_workspace/modified/oneOS_Hvac"

# Проверяем наличие каталога для сборки
if [ ! -d "$BUILD_DIR" ]; then
    echo -e "${RED}Ошибка: каталог $BUILD_DIR не найден!${NC}"
    echo -e "${YELLOW}Сначала распакуйте APK файл: apktool d oneOS_Hvac.apk -o $BUILD_DIR${NC}"
    exit 1
fi

# Копирование модифицированных файлов из app/ в apktool_workspace
echo -e "${YELLOW}Копируем модифицированные файлы...${NC}"

# Копируем каждый файл из списка
for file_pair in "${FILES_TO_COPY[@]}"; do
    # Разделяем пару на исходный и целевой пути
    IFS=':' read -r source_file dest_file <<< "$file_pair"
    
    # Пропускаем комментарии
    if [[ "$source_file" =~ ^#.*$ ]]; then
        continue
    fi
    
    # Проверяем существование исходного файла
    if [ ! -f "$source_file" ]; then
        echo -e "${RED}Предупреждение: файл $source_file не найден, пропускаем...${NC}"
        continue
    fi
    
    # Создаем целевую директорию, если её нет
    dest_dir=$(dirname "$dest_file")
    mkdir -p "$dest_dir"
    
    # Копируем файл
    cp "$source_file" "$dest_file"
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}  ✓ Скопирован: $source_file -> $dest_file${NC}"
    else
        echo -e "${RED}  ✗ Ошибка при копировании: $source_file${NC}"
    fi
done

echo -e "${GREEN}Копирование файлов завершено${NC}"

# Собираем модифицированный APK файл из каталога oneOS_Hvac
echo -e "${YELLOW}Собираем модифицированный APK файл из $BUILD_DIR...${NC}"
apktool b "$BUILD_DIR" -o ./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk

# Проверяем, что сборка прошла успешно
if [ ! -f "./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk" ]; then
    echo -e "${RED}Ошибка: APK файл не был создан!${NC}"
    exit 1
fi

echo -e "${GREEN}APK файл успешно собран${NC}"

# Подписываем APK файл
echo -e "${YELLOW}Подписываем APK файл...${NC}"
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore oneOS_Hvac.keystore -storepass "$KEYSTORE_PASSWORD" ./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk oneOS_Hvac

if [ $? -ne 0 ]; then
    echo -e "${RED}Ошибка при подписи APK файла!${NC}"
    exit 1
fi

echo -e "${GREEN}APK файл успешно подписан${NC}"

# Создаем каталог build, если его нет
if [ ! -d "build" ]; then
    mkdir -p build
fi

# Удаляем старый zip модуля Magisk, если существует
echo -e "${YELLOW}Удаляем старый модуль Magisk, если существует...${NC}"
rm -f ./build/oneOS_Hvac.zip

# Создаем zip архив для модуля Magisk
echo -e "${YELLOW}Создаем модуль Magisk...${NC}"
cd magisk
zip -r ../build/oneOS_Hvac.zip META-INF/ module.prop install.sh system/ common/ > /dev/null
cd ..

if [ ! -f "./build/oneOS_Hvac.zip" ]; then
    echo -e "${RED}Ошибка: Модуль Magisk не был создан!${NC}"
    exit 1
fi

echo -e "${GREEN}=== Сборка завершена успешно! ===${NC}"
echo -e "${GREEN}Модуль Magisk: ./build/oneOS_Hvac.zip${NC}"

# Открываем Finder с каталогом build
echo -e "${YELLOW}Открываем Finder с каталогом build...${NC}"
open build