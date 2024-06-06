# Use a imagem base oficial do Python
FROM python:3.9-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Atualiza os pacotes do sistema e instala dependências do sistema
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    libffi-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libopencv-dev \
    libavformat-dev \
    libpq-dev \
    libopencv-core-dev \
    libopencv-imgproc-dev \
    libvips-dev \
    && rm -rf /var/lib/apt/lists/*

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Define o comando padrão ao iniciar o container
CMD ["python3"]