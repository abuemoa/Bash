#!/bin/bash

# Script que funciona de perlas para el ruido que hace el sonido
# en la distribución de GNU/Linux Manjaro

hda-verb /dev/snd/hwC0D0 0x20 SET_COEF_INDEX 0x67
hda-verb /dev/snd/hwC0D0 0x20 SET_PROC_COEF 0x3000
