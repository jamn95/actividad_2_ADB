USE `empresa-retail-db`;

-- ---------------------------------------------------------
-- EJERCICIO 1: SUSTITUCION DE LETRAS
-- Cambia las apariciones de una letra por otro caracter.
-- ---------------------------------------------------------

SELECT
    cli_nombre,
    REPLACE(cli_nombre, 'e', '3') AS nombre_modificado
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 2: LECTURA INVERSA
-- Muestra el apellido comenzando por el ultimo caracter.
-- ---------------------------------------------------------

SELECT
    cli_apellido,
    REVERSE(cli_apellido) AS apellido_invertido
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 3: EXTRACCION FINAL
-- Presenta los cinco caracteres ubicados al final del correo.
-- ---------------------------------------------------------

SELECT
    cli_correo,
    RIGHT(cli_correo, 5) AS ultimos_5_caracteres
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 4: SEPARACION ENTRE TEXTOS
-- Combina el apellido y el nombre dejando dos espacios.
-- ---------------------------------------------------------

SELECT
    CONCAT(cli_apellido, SPACE(2), cli_nombre) AS nombre_completo
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 5: FRAGMENTO DEL NOMBRE
-- Extrae cuatro caracteres a partir de la segunda posicion.
-- ---------------------------------------------------------

SELECT
    cli_nombre,
    SUBSTR(cli_nombre, 2, 4) AS parte_nombre
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 6: RECORTE DEL APELLIDO
-- Obtiene tres letras desde la segunda posicion del apellido.
-- ---------------------------------------------------------

SELECT
    cli_apellido,
    SUBSTRING(cli_apellido, 2, 3) AS parte_apellido
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 7: PRESENTACION EN CAPITALIZACION ALTA
-- Transforma todas las letras del apellido a mayusculas.
-- ---------------------------------------------------------

SELECT
    cli_apellido,
    UPPER(cli_apellido) AS apellido_mayusculas
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 8: CONSTRUCCION DE UNA ETIQUETA
-- Une el nombre y el apellido mediante un separador.
-- ---------------------------------------------------------

SELECT
    CONCAT(cli_nombre, ' - ', cli_apellido) AS cliente_completo
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 9: BUSQUEDA DE UBICACION EN UNA LISTA
-- Indica el indice del nombre cuando coincide con la lista.
-- ---------------------------------------------------------

SELECT
    cli_nombre,
    FIELD(cli_nombre, 'Carlos', 'Ana', 'David', 'Laura') AS posicion
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 10: PRESENTACION DE CIFRAS
-- Muestra el valor de la conversion sin decimales.
-- ---------------------------------------------------------

SELECT
    con_valor,
    FORMAT(con_valor, 0) AS valor_formateado
FROM conversion;


-- ---------------------------------------------------------
-- EJERCICIO 11: NORMALIZACION DEL APELLIDO
-- Convierte los caracteres del apellido a letras minusculas.
-- ---------------------------------------------------------

SELECT
    cli_apellido,
    LCASE(cli_apellido) AS apellido_minusculas
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 12: INICIO DEL APELLIDO
-- Recupera los primeros cuatro caracteres del apellido.
-- ---------------------------------------------------------

SELECT
    cli_apellido,
    LEFT(cli_apellido, 4) AS primeros_4_caracteres
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 13: MEDICION DEL CORREO
-- Calcula la cantidad de bytes que ocupa cada correo.
-- ---------------------------------------------------------

SELECT
    cli_correo,
    LENGTH(cli_correo) AS longitud_correo
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 14: CONVERSION A FORMATO MINUSCULO
-- Estandariza el nombre utilizando letras minusculas.
-- ---------------------------------------------------------

SELECT
    cli_nombre,
    LOWER(cli_nombre) AS nombre_minusculas
FROM cliente;


-- ---------------------------------------------------------
-- EJERCICIO 15: REPETICION DE SIMBOLOS
-- Genera una cadena formada por tres signos numerales.
-- ---------------------------------------------------------

SELECT
    cli_apellido,
    REPEAT('#', 3) AS tres_numerales
FROM cliente;