# Usa la imagen oficial de Ubuntu
FROM ubuntu:20.04

# Actualiza e instala paquetes necesarios
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo
WORKDIR /app

# Comando para mantener el contenedor corriendo
CMD ["tail", "-f", "/dev/null"]

