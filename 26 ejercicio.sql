-- Ejercicio 26 Identifica clientes que compraron SOLO paracaídas (nunca compraron 
--accesorios). Muestra nombre y total gastado. 
--Pista: Subconsulta o CTE para filtrar clientes cuyas compras contienen SOLO la categoría 
--"Paracaídas". 
SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE c.id_cliente NOT IN (
    SELECT v2.id_cliente
    FROM ventas v2
    JOIN detalle_ventas dv2 ON v2.id_venta = dv2.id_venta
    JOIN productos p2 ON dv2.id_producto = p2.id_producto
    WHERE p2.categoria = 'Accesorios'
)
GROUP BY c.id_cliente;