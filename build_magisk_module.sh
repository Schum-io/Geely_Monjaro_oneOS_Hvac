#!/bin/bash

#
# oneOS_Hvac Enhanced Climate Controls - Build Script
# Author: https://github.com/Schum-io
# Description: Adds heating, ventilation and massage controls to the main climate screen
#

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
        -dname "CN=oneOS_Hvac, OU=Schum-io, O=GitHub, L=Unknown, ST=Unknown, C=US" \
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

# Функция для удаления data binding разметки из XML файла
remove_data_binding() {
    local input_file="$1"
    local output_file="$2"
    local temp_file="${output_file}.tmp"
    
    # Используем awk для удаления data binding разметки
    awk '
        BEGIN { 
            in_data = 0
            after_xml_declaration = 0
            found_root = 0
        }
        # Печатаем XML декларацию
        /^<\?xml/ { 
            print
            after_xml_declaration = 1
            next 
        }
        # Пропускаем строку с открывающим тегом <layout>
        /<layout>/ { 
            next 
        }
        # Начинаем пропускать блок <data>
        /<data>/ { 
            in_data = 1
            next 
        }
        # Заканчиваем пропускать блок </data>
        /<\/data>/ { 
            in_data = 0
            next 
        }
        # Пропускаем закрывающий тег </layout> в самом конце
        /<\/layout>$/ { 
            next 
        }
        # Пропускаем пустые строки сразу после XML декларации
        after_xml_declaration == 1 && /^[[:space:]]*$/ {
            next
        }
        # Печатаем все остальные строки, если мы не внутри блока data
        !in_data { 
            after_xml_declaration = 0
            # Убираем лишние отступы у первого реального элемента после XML декларации (корневой элемент)
            if (found_root == 0 && /<[a-zA-Z]/) {
                found_root = 1
                # Убираем ведущие пробелы у корневого элемента
                sub(/^[[:space:]]+/, "")
            }
            print 
        }
    ' "$input_file" > "$temp_file"
    
    # Перемещаем временный файл в выходной
    mv "$temp_file" "$output_file"
}

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
    
    # Проверяем, является ли файл XML layout файлом
    if [[ "$source_file" =~ \.xml$ ]] && [[ "$source_file" =~ /res/layout/ ]]; then
        # Для XML layout файлов удаляем data binding разметку
        remove_data_binding "$source_file" "$dest_file"
        
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}  ✓ Скопирован с удалением data binding: $source_file -> $dest_file${NC}"
        else
            echo -e "${RED}  ✗ Ошибка при копировании: $source_file${NC}"
        fi
    else
        # Для остальных файлов просто копируем
        cp "$source_file" "$dest_file"
        
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}  ✓ Скопирован: $source_file -> $dest_file${NC}"
        else
            echo -e "${RED}  ✗ Ошибка при копировании: $source_file${NC}"
        fi
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