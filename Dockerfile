# Usa la imagen oficial de Ubuntu
FROM ubuntu:20.04

# Instala ttyd y otros paquetes necesarios
RUN apt-get update && apt-get install -y ttyd curl wget vim

# Exponer el puerto 7681 (puerto por defecto de ttyd)
EXPOSE 7681

# Comando para iniciar ttyd
CMD ["ttyd", "-p", "7681", "bash"]


