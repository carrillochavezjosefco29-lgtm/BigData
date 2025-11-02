-- 1. Usamos la base de datos donde está la tabla city_pop
USE gans; 

-- 2. Actualizamos el campo para que coincida con el formato de la API
-- NOTA: Usamos 'Casablanca' como condición porque es la PK y es única
UPDATE city_pop
SET municipality_iso_country = 'Casablanca,MA'
WHERE city = 'Casablanca';

