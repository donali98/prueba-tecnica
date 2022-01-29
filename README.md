# Prueba técnica

## Generalidades
**IMPORTANTE** Algunos registros en la base, cuando se generan con el seeder comienzan con 0, al ejecutar el endpoint que obtiene todos, probablemente por la conversión de entero a string, tales ceros desaparecerán y mostrará sólo los dígitos diferentes a 0, ejemplo:
el producto tiene como código de barra en la base de datos el correlativo *0286283287073*, al buscar el mismo registro en el endpoint de la API el resultado del campo de barcode será de *286283287073*, si se quisiera realizar operaciones con éste último no se podría porque es un valor distinto a su barcode original.

**Motor de bases de datos utilizado:** MySQL
**Ubicación del dump de la base:** database\ecommercedump.sql
**Nombre de la base de datos:** ecommerce 
**Servidor Web:** Apache
**Archivo exportado de Postman con los endpoints y documentación:** En la raíz del proyecto, con el nombre *Product API.postman_collection*

## Instalación

1. Crear la base de datos en MySQL: `create database ecommerce`
2. Clonar el proyecto y configurar un archivo `.env` en la raíz del mismo, entre tales configuraciones deben estar las credenciales para el motor de la base de datos (el resto de valores pueden dejarse por default).
3. Ejecutar las migraciones: `php artisan migrate`
4. Poblar la base con el seeder `php artisan db:seed --class=ProductSeeder`
5. Configurar un servidor web, en el caso de Apache, deberá ser  así (cambiando ubicación de las carpetas, naturalmente)

![apache-conf](https://i.ibb.co/GMPJWdC/Screenshot-select-area-20220129102235.png)


6. Modificar el archivo **hosts** del sistema operativo para mapear el nombre del sitio (product-api.win) con la ip de máquina donde está conrriendo el servidor web. En el caso de Linux dicho archivo esta ubicado en `/etc/hosts`.

Con todo lo anterior realizado debería de ser posible consultar la api y sus respectivos endpoints.
