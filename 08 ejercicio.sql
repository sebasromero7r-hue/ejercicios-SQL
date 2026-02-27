-- Ejercicio 8 ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?clientes
SELECT COUNT(*) AS ventas_con_cupon
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';