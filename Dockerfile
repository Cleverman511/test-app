FROM python:3.10-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем проект
COPY ./app /app/app

# Устанавливаем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Команда запуска приложения
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
