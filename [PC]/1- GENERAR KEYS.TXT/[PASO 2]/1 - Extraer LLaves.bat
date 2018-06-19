@Echo off

IF EXIST BCPKG2-1-Normal-Main (GOTO verificarboot0) ELSE (GOTO errordearchivos)
:verificarboot0  
IF EXIST BOOT0 (GOTO inicio) ELSE (GOTO errordearchivos)

:errordearchivos
echo 
echo NO SE ENCUENTRAN LOS ARCHIVOS NECESARIOS PARA CONTINUAR
echo . 
echo se necesita el "BOOT0" y el "BCPKG2-1-Normal-Main"
PAUSE
EXIT

:inicio  
mkdir data
copy BCPKG2-1-Normal-Main data\BCPKG2-1-Normal-Main.bin
copy BOOT0 data\BOOT0.bin
copy Datos\Settings.ini Settings.ini
copy Datos\KernelPatcher.exe KernelPatcher.exe
copy Datos\KeyDumper.exe KeyDumper.exe
copy Datos\llaves.bat llaves.bat
copy Datos\LibSwitch.dll LibSwitch.dll
copy Datos\fin.bat fin.bat
goto llaves

:llaves
llaves.bat
