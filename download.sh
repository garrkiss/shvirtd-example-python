#!/bin/bash

# Установить рабочий каталог
TARGET_DIR="/opt/shvirtd-example-python"

# Клонирование репозитория в /opt
echo "Клонируем репозиторий в $TARGET_DIR..."
sudo git clone https://github.com/garrkiss/shvirtd-example-python.git "$TARGET_DIR"

# Переход в каталог проекта
cd "$TARGET_DIR" || exit 1

# Запуск проекта
echo "Запускаем проект с помощью Docker Compose..."
sudo docker compose -f compose.yaml up -d

echo "Проект успешно запущен."
