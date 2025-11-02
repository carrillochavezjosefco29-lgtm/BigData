-- 1. Usar la base de datos que creaste (gans)
USE gans; 

-- 2. Insertar la fila de Casablanca SÓLO CON LAS COLUMNAS EXISTENTES
INSERT INTO city_pop (
    city, 
    latitude, 
    longitude, 
    country, 
    country_code, 
    municipality_iso_country, 
    population
)
VALUES (
    'Casablanca', 
    33.5992, 
    -7.62, 
    'Morocco', 
    'MA', 
    'Casablanca-Settat', 
    4370000
);

-- 3. Verificar que la inserción haya funcionado
SELECT * FROM city_pop;

USE gans;
SELECT * FROM city_pop;


