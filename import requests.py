import requests
import pandas as pd
import numpy as np
from keys import *

city = "Casablanca"
country = "MA"


response = requests.get(
    f'https://api.openweathermap.org/data/2.5/forecast?q={city},{country}&appid={OWM_key}&units=metric&lang=en'
)
# Extraccion de datos y procesador en forma de python
if response.status_code != 200:
    print("Error en la API:", response.status_code, response.text)
else:
    data = response.json()

    #Extraccion de la lista de pronosticos
    forecast_list = data.get('list', [])
    

   #listas para las columnas del DataFrame
    times, temperatures, humidities = [], [], []
    weather_statuses, wind_speeds = [], []
    rain_volumes, snow_volumes = [], []

    for entry in forecast_list:
        times.append(entry.get('dt_txt', np.nan))
        temperatures.append(entry.get('main', {}).get('temp', np.nan))
        humidities.append(entry.get('main', {}).get('humidity', np.nan))
        weather_statuses.append(entry.get('weather', [{}])[0].get('main', np.nan))
        wind_speeds.append(entry.get('wind', {}).get('speed', np.nan))
        rain_volumes.append(entry.get('rain', {}).get('3h', np.nan))
        snow_volumes.append(entry.get('snow', {}).get('3h', np.nan))

    # Creacion del DataFrame
    df = pd.DataFrame({
        'time': times,
        'temperature': temperatures,
        'humidity': humidities,
        'weather_status': weather_statuses,
        'wind_speed': wind_speeds,
        'rain_volume_3h': rain_volumes,
        'snow_volume_3h': snow_volumes
    })

    print(df.head())

