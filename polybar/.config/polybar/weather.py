#!/usr/bin/python
import pyowm
# -*- coding: utf-8 -*-

owm = pyowm.OWM('1e2a5c80bec78c8269fdd3b4f7eb2930') 
observation = owm.weather_at_place("Havant, United Kingdom")
w = observation.get_weather()
temperature = w.get_temperature()
temperature = temperature['temp_max'] - 273.15
status = w.get_status();

print(status, int(temperature))


