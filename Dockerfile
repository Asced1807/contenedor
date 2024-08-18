# Usa la imagen oficial de Ubuntu
FROM ubuntu:20.04

# Actualiza el índice de paquetes e instala dependencias necesarias
RUN apt-get update && apt-get install -y \
    git \
    cmake \
    libwebsockets-dev \
    build-essential

# Clona el repositorio de ttyd y compílalo
RUN git clone https://github.com/tsl0922/ttyd.git /tmp/ttyd \
    && cd /tmp/ttyd \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make \
    && make install

# Limpia el directorio de compilación para ahorrar espacio
RUN rm -rf /tmp/ttyd

# Exponer el puerto 7681 (puerto por defecto de ttyd)
EXPOSE 7681

# Comando para iniciar ttyd con todos los permisos
CMD ["ttyd", "--writable", "-p", "7681", "bash"]






