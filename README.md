# Ejercicios SQL: Funciones de cadenas y formato en MySQL

## 1. Descripción

Este documento presenta 15 ejercicios prácticos de SQL desarrollados en MySQL Workbench sobre la base de datos `empresa-retail-db`. Su propósito es aprender a utilizar funciones integradas para manipular cadenas de texto, extraer caracteres, modificar la presentación de los datos y dar formato a valores numéricos.

Las consultas utilizan principalmente las tablas `cliente` y `conversion`, mediante instrucciones `SELECT` que permiten visualizar los resultados sin modificar la información almacenada.

## 2. Objetivos

- Comprender el funcionamiento de diferentes funciones integradas de MySQL.
- Aplicar operaciones de transformación y extracción de texto.
- Combinar cadenas para generar información descriptiva.
- Consultar posiciones de valores dentro de una lista.
- Mejorar la presentación de datos numéricos.
- Practicar consultas SQL sobre una base de datos existente.

## 3. Requisitos

- MySQL Workbench.
- Base de datos `empresa-retail-db`.
- Tablas `cliente` y `conversion` con sus respectivas columnas.

## 4. Desarrollo de los ejercicios

### Ejercicio 1. REPLACE

**Propósito:** Reemplazar una letra por otro carácter dentro del nombre de un cliente.

**Función:** `REPLACE(cadena, texto_original, texto_nuevo)`

En este ejercicio, las apariciones de la letra `e` se sustituyen por el número `3`.

### Ejercicio 2. REVERSE

**Propósito:** Mostrar el apellido de cada cliente en orden inverso.

**Función:** `REVERSE(cadena)`

La función invierte el orden de los caracteres de la cadena original.

### Ejercicio 3. RIGHT

**Propósito:** Obtener los últimos cinco caracteres del correo electrónico de cada cliente.

**Función:** `RIGHT(cadena, cantidad)`

Permite extraer una cantidad específica de caracteres comenzando desde el extremo derecho.

### Ejercicio 4. SPACE

**Propósito:** Combinar el apellido y el nombre utilizando dos espacios como separador.

**Función:** `SPACE(cantidad)`

Genera una cadena con el número de espacios indicado. En este caso, se utiliza junto con `CONCAT` para unir los textos.

### Ejercicio 5. SUBSTR

**Propósito:** Extraer cuatro caracteres del nombre comenzando desde la segunda posición.

**Función:** `SUBSTR(cadena, posición_inicial, longitud)`

Permite obtener una parte específica de una cadena. En MySQL, las posiciones comienzan desde 1.

### Ejercicio 6. SUBSTRING

**Propósito:** Obtener tres caracteres del apellido a partir de la segunda posición.

**Función:** `SUBSTRING(cadena, posición_inicial, longitud)`

Cumple la misma función básica que `SUBSTR`, ya que ambas permiten extraer fragmentos de texto.

### Ejercicio 7. UPPER

**Propósito:** Presentar los apellidos utilizando únicamente letras mayúsculas.

**Función:** `UPPER(cadena)`

Convierte las letras del texto a mayúsculas sin modificar el valor almacenado en la tabla.

### Ejercicio 8. CONCAT

**Propósito:** Unir el nombre y el apellido de cada cliente mediante un guion.

**Función:** `CONCAT(cadena1, cadena2, ...)`

Permite combinar dos o más cadenas para generar un único resultado.

### Ejercicio 9. FIELD

**Propósito:** Identificar la posición de un nombre dentro de una lista determinada.

**Función:** `FIELD(valor, valor1, valor2, ...)`

Devuelve la posición de la primera coincidencia. Si el nombre no aparece en la lista, devuelve `0`.

### Ejercicio 10. FORMAT

**Propósito:** Mostrar los valores de conversión con formato numérico y sin posiciones decimales.

**Función:** `FORMAT(numero, decimales)`

En este ejercicio, el segundo argumento es `0`, por lo que el resultado se presenta sin decimales y con separadores de miles según la configuración regional de MySQL.

### Ejercicio 11. LCASE

**Propósito:** Convertir los apellidos a letras minúsculas.

**Función:** `LCASE(cadena)`

Transforma el texto a minúsculas. Es equivalente a la función `LOWER`.

### Ejercicio 12. LEFT

**Propósito:** Extraer los primeros cuatro caracteres del apellido de cada cliente.

**Función:** `LEFT(cadena, cantidad)`

Obtiene una cantidad específica de caracteres desde el extremo izquierdo de una cadena.

### Ejercicio 13. LENGTH

**Propósito:** Calcular la longitud de los correos electrónicos almacenados.

**Función:** `LENGTH(cadena)`

Devuelve la cantidad de bytes que ocupa una cadena, no necesariamente el número de caracteres cuando existen letras acentuadas u otros caracteres multibyte.

### Ejercicio 14. LOWER

**Propósito:** Presentar los nombres de los clientes en letras minúsculas.

**Función:** `LOWER(cadena)`

Convierte el texto a minúsculas. Su comportamiento básico es equivalente al de `LCASE`.

### Ejercicio 15. REPEAT

**Propósito:** Generar una cadena con tres signos numerales.

**Función:** `REPEAT(cadena, cantidad)`

Repite el texto indicado el número de veces especificado. En este caso, genera `###` para cada registro consultado.

## 5. Consideraciones técnicas

- La instrucción `USE` selecciona la base de datos sobre la que se ejecutarán las consultas.
- Las instrucciones `SELECT` permiten consultar y mostrar resultados sin alterar los registros.
- Los alias definidos con `AS` asignan nombres descriptivos a las columnas resultantes.
- Las funciones `SUBSTR` y `SUBSTRING` son equivalentes para estos ejercicios.
- Las funciones `LCASE` y `LOWER` también son equivalentes.
- Si un nombre no coincide con ninguno de los valores indicados en `FIELD`, el resultado será `0`.
- Los resultados dependen de los datos que existan en las tablas `cliente` y `conversion`.

## 6. Conclusión

Los ejercicios permiten practicar funciones de MySQL para la manipulación de cadenas, la extracción de fragmentos, la conversión entre mayúsculas y minúsculas, la combinación de textos, la búsqueda de posiciones y el formato numérico.

Su aplicación facilita la comprensión de las operaciones que pueden realizarse directamente en las consultas SQL para presentar la información de una base de datos de forma más clara y organizada.

## 7. Ejecución

1. Abrir MySQL Workbench y conectarse al servidor.
2. Seleccionar o abrir el archivo SQL que contiene los 15 ejercicios.
3. Verificar que la base de datos `empresa-retail-db` y las tablas requeridas existan.
4. Ejecutar las consultas individualmente o seleccionar el bloque completo.
5. Revisar los resultados en la cuadrícula de salida de MySQL Workbench.
