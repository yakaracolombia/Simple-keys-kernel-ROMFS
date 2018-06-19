IF EXIST kernel-patched.bin (GOTO fin) ELSE (GOTO errordearchivos)

:errordearchivos
del KernelPatcher.exe
del KeyDumper.exe
del LibSwitch.dll
del llaves.bat
del Settings.ini
rmdir /S /Q data
echo 
echo ERROR EN EL PROCESO FALTAN ARCHIVOS O LAS LLAVES SON INCORRECTAS
echo . 
echo ASEGURATE DE COLOCARLAS CORRECTAMENTE
PAUSE
del fin.bat
EXIT

:fin
copy keys.txt keys.ini
copy kernel-patched.bin kernel.bin
del KernelPatcher.exe
del KeyDumper.exe
del LibSwitch.dll
del llaves.bat
del Settings.ini
rmdir /S /Q data
xcopy /s /i "Datos\[SD]" "[COPIAR-A-LA-SD]"
copy kernel.bin [COPIAR-A-LA-SD]\modules\layered
copy kernel-patched.bin [COPIAR-A-LA-SD]\modules\layered
echo .
echo FINALIZADO CORRECTAMENTE 
echo .
echo AHORA TIENES LOS ARCHIVOS keys.ini, keys.txt, 
echo . 
echo y tambien los archivos para copiar en tu SD con kernel.bin, kernel-patched.bin inyectado
echo .
echo . ********SCRIPT CREADO POR YAKARA********
echo .
echo . este metodo automatizado no existia asi que lo hiice lo mas autonomo posible
PAUSE
del fin.bat
EXIT

