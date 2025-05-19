# Usa la imagen oficial de MySQL
FROM mysql:8.0

# Establece la variable de entorno para la contraseña root

# Establece la variable de entorno para el nombre de la base de datos
ENV MYSQL_DATABASE=empleado

# Copia el archivo SQL al directorio de inicialización de MySQL
# Los archivos dentro de /docker-entrypoint-initdb.d/ se ejecutan automáticamente
# al iniciar el contenedor si la base de datos no existe
COPY empleado.sql /docker-entrypoint-initdb.d/

# Expone el puerto MySQL
EXPOSE 3306