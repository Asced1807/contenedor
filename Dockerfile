# Usa la imagen oficial de Ubuntu
FROM ubuntu:20.04

# Actualiza el índice de paquetes
RUN apt-get update

# Instala ttyd
RUN apt-get install -y ttyd

# Instala otros paquetes necesarios
RUN apt-get install -y curl wget vim

# Exponer el puerto 7681 (puerto por defecto de ttyd)
EXPOSE 7681

# Comando para iniciar ttyd
CMD ["ttyd", "-p", "7681", "bash"]



