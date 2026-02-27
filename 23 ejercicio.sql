--Ejercicio 23 ¿Cuáles son los 5 productos con mayor ingresos acumulado? 
--Pista: JOIN detalle_ventas con productos, SUM(cantidad * precio_unitario), GROUP BY, ORDER 
--BY DESC, LIMIT 5. 
SELECT p.nombre,
       SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY dv.id_producto
ORDER BY ingreso_total DESC
LIMIT 5;