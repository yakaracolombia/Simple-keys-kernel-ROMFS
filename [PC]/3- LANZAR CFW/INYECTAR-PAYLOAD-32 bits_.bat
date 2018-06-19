@echo off
echo PASO -1: Desconecta el cable USB-C
echo PASO -2: Apaga totalmente tu Nintendo Switch
echo PASO -3: Manten presionado el boton de VOLUMEN [+]
echo PASO -4: Sin soltarlo, conecta el cable USB-C Del PC a la Nintendo Switch
DATOS\tegrarcmsmash\TegraRcmSmash_win32.exe -w "DATOS/payloads/payload.bin" 
echo Done
pause