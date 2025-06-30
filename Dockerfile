# Imagen base de Python
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia todos los archivos
COPY . .

# Instala dependencias
RUN pip install --upgrade pip \
 && pip install -r requirements.txt

# Exponer el puerto para Railway
EXPOSE 8080

# Comando para iniciar la app
CMD ["python", "app.py"]
