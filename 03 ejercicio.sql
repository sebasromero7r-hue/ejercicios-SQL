-- Ejercicio 3 ¿Cuál es el paracaídas más caro que tenemos?
SELECT MAX(precio) AS paracaidas_mas_caro
FROM productos
WHERE categoria = 'Paracaídas';