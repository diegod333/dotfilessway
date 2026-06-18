#!/bin/bash
# Ruta a tu carpeta de fondos de pantalla
DIR="$HOME/Pictures/Wallpapers"

# Selecciona un archivo al azar que termine en jpg, jpeg o png
WALLPAPER=$(find "$DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) | shuf -n 1)

# Aplica el fondo usando swaybg en todas las pantallas
swaymsg "output * bg '$WALLPAPER' fill"
