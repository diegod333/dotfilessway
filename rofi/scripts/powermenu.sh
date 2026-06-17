#!/bin/bash

opcion_apagar="Power Off"
opcion_reiniciar="Reboot"
opcion_logout="Log Out"

opciones="$opcion_apagar\n$opcion_reiniciar\n$opcion_logout"

# Llamamos a rofi apuntando directamente al archivo .rasi
seleccion=$(echo -e "$opciones" | rofi -dmenu -i -p "Power" -theme ~/.config/rofi/powertheme.rasi)

case "$seleccion" in
    "$opcion_apagar")
        systemctl poweroff
        ;;
    "$opcion_reiniciar")
        systemctl reboot
        ;;
    "$opcion_logout")
        swaymsg exit
        ;;
esac
