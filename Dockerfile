# Базовый официальный образ n8n
FROM docker.n8n.io/n8nio/n8n

# Переключаемся на root для установки
USER root

# Устанавливаем ffmpeg и docker-cli (если нужен)
RUN apk add --no-cache docker-cli ffmpeg

# Создаём группу docker (если её нет) и добавляем пользователя node
RUN addgroup -S docker || true
RUN addgroup node docker

# Возвращаемся к обычному пользователю node
USER node
