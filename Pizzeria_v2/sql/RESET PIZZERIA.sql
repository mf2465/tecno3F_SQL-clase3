SET FOREIGN_KEY_CHECKS=0;

TRUNCATE TABLE cte_temp;
TRUNCATE TABLE fact_temp;
TRUNCATE TABLE facturas;
TRUNCATE TABLE ventas;
TRUNCATE TABLE ventas_temp;
TRUNCATE TABLE clientes;
TRUNCATE TABLE logs;

SET FOREIGN_KEY_CHECKS=1;



SET SQL_SAFE_UPDATES = 0;

UPDATE stock SET cantidad_producto = 250;
UPDATE choferes SET activo = 1 WHERE activo = 0;
-- TEST DE PRODUCTOS FALTANTES
-- UPDATE stock SET cantidad_producto = FLOOR(RAND() * (90 - 20) + 20) WHERE RAND() < 0.5;

SET SQL_SAFE_UPDATES = 1;