# Imagen base de Python
FROM python:3.10-slim

# Evita prompts interactivos al instalar
ENV DEBIAN_FRONTEND=noninteractive

# Instala dependencias del sistema necesarias para OpenCV
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo
WORKDIR /app

# Copia todos los archivos
COPY . .

# Instala las dependencias de Python
RUN pip install --upgrade pip \
 && pip install -r requirements.txt

# Expone el puerto para Railway
EXPOSE 8080

# Comando para iniciar la app
CMD ["python", "app.py"]
