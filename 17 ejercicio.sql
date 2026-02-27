-- Ejercicio 17 ¿Cuánto dinero hemos dejado de ingresar por el cupón "ULTIMO_SUSPIRO"? 
--(Calcula la diferencia entre lo que hubiera sido sin descuento y lo que fue con descuento). 
--Pista: Calcula el total con descuento y sin descuento. Usa subconsultas o CTEs. 
--Consideración: Si el descuento es 30%, significa 70% del precio original. Invierte: monto_actual
SELECT SUM((total_venta / 0.70) - total_venta) AS dinero_perdido
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';