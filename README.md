# iaw-lamp-dosniveles
Práctica LAMP en dos niveles en Vagrant

## Autor
David Felipe Manosalva Niño

## Objetivo

El objetivo de esta práctica es montar una infraestructura **LAMP (Linux, Apache, MySQL/MariaDB, PHP)** en **dos niveles** utilizando **Vagrant**. La aplicación que se despliega es un sistema de gestión de usuarios descargable desde [este enlace](https://informatica.iesalbarregas.com/mod/url/view.php?id=4382).

Se busca que, tras ejecutar `vagrant up`, la infraestructura esté lista, la aplicación esté desplegada correctamente y sea accesible desde un navegador.

---

## 2. Estructura del Proyecto

El proyecto contiene los siguientes archivos:

- `Vagrantfile`: define las máquinas virtuales, sus IPs, hostnames y aprovisionamiento.  
- `aprov_apache.sh`: script para configurar el servidor Apache y PHP, instalar dependencias y desplegar la aplicación.  
- `aprov_mysql.sh`: script para configurar MariaDB, crear la base de datos y el usuario, y definir permisos.  
- `README.md`: este documento explica la práctica, los scripts y cómo verificar el entorno.  

---
