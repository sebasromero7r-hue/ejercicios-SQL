-- Ejercicio 25 ¿Cuál es el cliente que compró la mayor variedad de productos diferentes (no 
--cantidad, sino tipos distintos)? 
SELECT c.nombre,
       COUNT(DISTINCT dv.id_producto) AS variedad_productos
FROM ventas v
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente
ORDER BY variedad_productos DESC
LIMIT 1;