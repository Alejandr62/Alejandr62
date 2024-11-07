#!/bin/bash
# FASTFPS.sh - Optimización para mejorar la tasa de FPS en juegos en Android

# 1. Desactivar animaciones del sistema
settings put global window_animation_scale 0.0
settings put global transition_animation_scale 0.0
settings put global animator_duration_scale 0.0
echo "Animaciones del sistema desactivadas."

# 2. Establecer el CPU a modo de alto rendimiento
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo performance > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo "CPU ajustado a modo de alto rendimiento."

# 3. Optimizar el uso de la memoria
echo 100 > /proc/sys/vm/swappiness
echo "Memoria optimizada."

# 4. Limpiar la caché del sistema
sync
echo 3 > /proc/sys/vm/drop_caches
echo "Caché del sistema liberada."

# 5. Forzar el cierre de aplicaciones en segundo plano que consumen recursos
am force-stop com.android.chrome
am force-stop com.android.music
am force-stop com.whatsapp
echo "Aplicaciones en segundo plano detenidas."

# 6. Ajustar la GPU para mejorar el rendimiento (si es compatible)
echo "Performance" > /sys/class/kgsl/kgsl-3d0/devfreq/governor
echo "GPU ajustada a modo de alto rendimiento."

# 7. Mostrar mensaje final
echo "Optimización de FPS completada. ¡Disfruta de una mejor experiencia de juego!"
