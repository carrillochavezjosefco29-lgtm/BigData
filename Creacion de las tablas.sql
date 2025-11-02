-- Usar la base de datos que acabamos de crear
USE gans; 

INSERT INTO city_pop (
    city, 
    city_repeat, 
    latitude, 
    longitude, 
    country, 
    country_code, 
    country_iso, 
    municipality_iso_country, 
    admin_type, 
    population, 
    other_id
)
VALUES (
    'Casablanca', 
    'Casablanca', 
    33.5992, 
    -7.62, 
    'Morocco', 
    'MA', 
    'MAR', 
    'Casablanca-Settat', 
    'admin', 
    4370000, 
    1504175315
);

 SELECT * FROM city_pop;  