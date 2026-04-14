#!/bin/bash
# Proyecto: Chicago Taxi - Auditoría de Logs
# Herramienta: Consola Cygwin

# ==========================================================
# EJERCICIO 1: Filtrar solicitudes por segmento de IP (233.201)
# ==========================================================
# Objetivo: Identificar logs de diciembre 2019 desde IPs específicas.
grep "233.201" logs/2019/12/*

# ==========================================================
# EJERCICIO 2: Aislamiento de errores 400 y 500
# ==========================================================
# 1. Crear estructura de carpetas para el bug detectado el 30/12/2019
mkdir -p bug1/events

# 2. Extraer todas las solicitudes del día al archivo main.txt
grep "30/12/2019" logs/2019/12/* > bug1/main.txt

# 3. Filtrar errores específicos (400 y 500) a sus respectivos archivos
grep "HTTP/1.1\" 400" bug1/main.txt > bug1/events/400.txt
grep "HTTP/1.1\" 500" bug1/main.txt > bug1/events/500.txt
