USE gans;

-- Insertar el aeropuerto de Casablanca (GMMN) en la tabla padre (airport)
INSERT INTO airport (
    airport_name,
    latitude_deg,
    longitude_deg,
    elevation_ft,
    iso_country,
    iso_region,
    municipality,
    icao_code,
    iata_code,
    municipality_iso_country
)
VALUES (
    'Mohammed V International Airport',
    33.3675,
    -7.5899,
    65,
    'MA',
    'MA-CAS',
    'Casablanca',
    'GMMN', -- Clave Primaria que la tabla 'flight_arrival' busca
    'CMN',
    'Casablanca,MA'
);