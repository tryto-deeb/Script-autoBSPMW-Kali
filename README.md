## Descripción

Buenas, os comparto este script en bash para montar el entorno de trabajo con el gestor de ventanas BSPWM en Kali linux en tan solo unos minutos.

Este script tiene como base el script en bash de [xJackSx](https://github.com/xJackSx/BSPWMparrot) que monta el entorno de S4vitar,  pero con algunos cambios en la personalización y la configuración.

![Ejemplo.png](https://github.com/tryto-deeb/Script-autoBSPMW-Kali/blob/master/ejemplo.png)


## Uso

1 - 
     Botón Izquierdo: Cambiar resolución a 1920x1080  
         Botón Derecho: Cambiar resolución a 2560x1440  

2 - Botón Izquierdo: Copiar IP   
        Botón Derecho: Libre (nada)  
    
3 - Botón Izquierdo: Copiar IP de docker  
        Botón Derecho: Libre (nada)  
    
4 - Botón Izquierdo: Copiar Ip VPN  
        Botón Derecho: Libre (nada)  

5 - Botón Izquierdo: Abrir Firefox encapsulado por firejail  
        Botón Derecho: Abrir Brave encapsulado por firejail  

6 - Botón Izquierdo: Abrir Visual Studi Code  
        Botón Derecho: Libre (nada)  
    
7 - Botón Izquierdo: Abrir Obsidian  
        Botón Derecho: Tomar captura con Flameshot  

8 - Botón Izquierdo: Abrir Caja ( gestor de archivos )   
        Botón Derecho: Borrar historial del usuario  

9 - Botón Izquierdo: Copiar IP del objetivo  
        Botón Derecho: Resetear los datos del objetivo 
    
Añadir nombre e IP de la máquina objetivo   
```
settarget Nombre_objetivo IP_objetivo
```

-----


## Pre-Instalación

Este script esta pensado para instalar el entorno en maquina virtual, si acabas de hacer la instalación es recomendable hacer una primera actualización

```
sudo apt update
```
```
sudo apt upgrade -y  # sudo apt full-ugprade si fuese necesario
```
En principio debería instalarlo todo sin problemas, pero por si acaso algo no sale como se espera  es recomendable hacer un snapshot en tu máquina virtual y
en caso de que algo no salga bién poder restaurar el punto anterior a la instalación 

-----


## Instalación

```
git clone https://github.com/tryto-deeb/Script-autoBSPMW-Kali.git
```

```
cd Script-autoBSPMW-Kali
```

```
chmod +x install.sh
```

```
./install.sh

```


------


## Otro

Si alguna de las funciones falla , es porqué mientras se ejecuta la instalación a fallado alguna descarga, para solucinarlo solo es necesario poner manualmente la descarga fallida en la ubicación correspondiente. Si hiciste el Snapshot de la máquina virtual, también puedes restaurar la imágen anterior a la instalción y volver a lanzar el script.

Este script deberia funcionar en cualquier distribución de Debian, menos en Parrot OS que es necesario sustituir los comandos  `sudo apt upgrade` por `sudo parrot-upgrade` en el archivo install.sh, el resto és todo lo mismo.

#### Ejemplo error de descarga

![Ejemplo.png](https://github.com/tryto-deeb/Script-autoBSPMW-Kali/blob/master/ejemplo_error_descarga.png)

```
 sudo mkdir /usr/share/zsh-sudo
```
```
 cd /usr/share/zsh-sudo
```
```
 sudo wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
```

