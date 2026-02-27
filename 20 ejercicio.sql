-- Ejercicio 20 Para cada categoría de producto, calcula el ingreso total, cantidad de unidades 
--vendidas y ticket promedio por venta. 
SELECT p.categoria,
       SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total,
       SUM(dv.cantidad) AS total_unidades,
       AVG(v.total_venta) AS ticket_promedio
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
JOIN ventas v ON dv.id_venta = v.id_venta
GROUP BY p.categoria;