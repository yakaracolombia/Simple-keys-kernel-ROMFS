@echo off
echo YAKARA REALIZO ESTE SCRIPT QUE DUMPEA LAS KEYS
echo .
echo .
echo PASO -1: Desconecta el cable USB-C
echo PASO -2: Apaga totalmente tu Nintendo Switch
echo PASO -3: Manten presionado el boton de VOLUMEN [+]
echo PASO -4: Sin soltarlo, conecta el cable USB-C Del PC a la Nintendo Switch
echo .
echo .
DATOS\tegrarcmsmash\TegraRcmSmash_x64.exe -w "DATOS/payloads/biskeydump.bin" BOOT:0x0
echo Done
pause