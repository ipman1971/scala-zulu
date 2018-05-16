# scala-zulu
Imagen que dispone un entorno de desarrollo con Scala, SBT o Maven y Zulu JVM
Mapea un directorio de la máquina host donde se pueden ubicael workspace de nuestro
proyecto para poder construir y ejcutar

Dispone de las siguientes variables de entorno:

+ JAVA_HOME
+ MAVEN_HOME
+ WORKSPACE

## Construción de imagen
```
make
```

## Creación de un contenedor
```
make run workspace=<directorio de proyecto>

por ejemplo

make run workspace=$PWD
```

## Eliminación de un contenedor
```
make clean
```

## Eliminación de la imagen
```
make clean-image
```
