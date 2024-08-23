# Используем базовый образ Nginx
FROM nginx:alpine

# Копируем файлы в контейнер
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY script.js /usr/share/nginx/html/script.js
COPY ./icons /usr/share/nginx/html/icons
COPY ./jpg /usr/share/nginx/html/jpg
# Экспонируем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
